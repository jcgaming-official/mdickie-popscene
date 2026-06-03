.class public Lcom/newpixel/songpicker/SongPickerExtension;
.super Ljava/lang/Object;
.source "SongPickerExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static final CANCELLED_SONG_PICKER:Ljava/lang/String; = "cancelledSongPicker"

.field public static final SONG_CHOSEN:Ljava/lang/String; = "songChosen"

.field public static final SONG_FINISHED:Ljava/lang/String; = "songFinished"

.field public static final TAG:Ljava/lang/String; = "SongPickerExtension"

.field public static appContext:Landroid/content/Context; = null

.field public static currentVolume:F = 1.0f

.field public static extensionContext:Lcom/adobe/fre/FREContext;

.field public static songMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 46
    new-instance p1, Lcom/newpixel/songpicker/SongPickerExtensionContext;

    invoke-direct {p1}, Lcom/newpixel/songpicker/SongPickerExtensionContext;-><init>()V

    return-object p1
.end method

.method public dispose()V
    .locals 2

    const-string v0, "SongPickerExtension"

    const-string v1, "Extension disposed."

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/newpixel/songpicker/SongPickerExtension;->appContext:Landroid/content/Context;

    .line 56
    sput-object v0, Lcom/newpixel/songpicker/SongPickerExtension;->extensionContext:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 2

    const-string v0, "SongPickerExtension"

    const-string v1, "Extension initialized."

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
