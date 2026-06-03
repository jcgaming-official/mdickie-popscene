.class public Lcom/newpixel/songpicker/functions/PlaySongFunction;
.super Ljava/lang/Object;
.source "PlaySongFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "PlaySongFunction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    .line 43
    sget-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    const-string v0, ""

    const/4 v1, 0x0

    .line 49
    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 64
    :cond_0
    sget-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->appContext:Landroid/content/Context;

    invoke-static {p1, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    # --- CRITICAL FIX: null check for MediaPlayer.create() on Android 12-16 ---
    # MediaPlayer.create() can return null if the URI is invalid or inaccessible
    if-eqz p1, :cond_create_failed

    .line 65
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 66
    sput-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    const-string v1, "PlaySongFunction"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created Media Player "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :cond_1

    # --- MediaPlayer.create() returned null: log error and bail out ---
    :cond_create_failed
    const-string v1, "PlaySongFunction"

    const-string v2, "MediaPlayer.create() returned null - URI may be inaccessible"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # Dispatch error event so the game knows playback failed
    sget-object v1, Lcom/newpixel/songpicker/SongPickerExtension;->extensionContext:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_skip_error_event

    const-string v2, "songFinished"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_skip_error_event
    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 73
    :try_start_1
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    double-to-int v0, v1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 77
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-ltz v0, :cond_2

    .line 82
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-string p2, "PlaySongFunction"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    sget p2, Lcom/newpixel/songpicker/SongPickerExtension;->currentVolume:F

    sget v0, Lcom/newpixel/songpicker/SongPickerExtension;->currentVolume:F

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 86
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 95
    sget-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->extensionContext:Lcom/adobe/fre/FREContext;

    const-string v0, "songFinished"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
