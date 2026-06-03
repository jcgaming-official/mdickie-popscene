.class public Lcom/newpixel/songpicker/functions/FadeInSongFunction;
.super Ljava/lang/Object;
.source "FadeInSongFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final TAG:Ljava/lang/String; = "FadeInSongFunction"


# instance fields
.field private fIncrement:F

.field private fOriginalVolume:F

.field private fVolume:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fVolume:F

    return p0
.end method

.method static synthetic access$1(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fIncrement:F

    return p0
.end method

.method static synthetic access$2(Lcom/newpixel/songpicker/functions/FadeInSongFunction;F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fVolume:F

    return-void
.end method

.method static synthetic access$3(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fOriginalVolume:F

    return p0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    .line 28
    sget-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 33
    :try_start_0
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float v0, v1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p2, "FadeInSongFunction"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in fadeInSong "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget p2, Lcom/newpixel/songpicker/SongPickerExtension;->currentVolume:F

    iput p2, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fOriginalVolume:F

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fVolume:F

    .line 46
    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    cmpl-float p1, v0, p2

    if-lez p1, :cond_0

    .line 48
    iget p1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fOriginalVolume:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 52
    iget p1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fOriginalVolume:F

    const/high16 p2, 0x41a00000    # 20.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->fIncrement:F

    .line 54
    new-instance v1, Ljava/util/Timer;

    const/4 p1, 0x1

    invoke-direct {v1, p1}, Ljava/util/Timer;-><init>(Z)V

    .line 55
    new-instance v2, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;

    invoke-direct {v2, p0, v1}, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;-><init>(Lcom/newpixel/songpicker/functions/FadeInSongFunction;Ljava/util/Timer;)V

    const/16 p1, 0xa

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v0, v0, v3

    div-float/2addr v0, p2

    .line 77
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v5, p1

    move-wide v3, v5

    .line 78
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
