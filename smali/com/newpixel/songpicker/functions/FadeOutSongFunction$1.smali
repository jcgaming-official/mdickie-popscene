.class Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;
.super Ljava/util/TimerTask;
.source "FadeOutSongFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

.field private final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    iput-object p2, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->val$timer:Ljava/util/Timer;

    .line 49
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v0}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;)F

    move-result v1

    iget-object v2, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v2}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$1(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$2(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;F)V

    .line 55
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v0}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;)F

    move-result v0

    iget-object v1, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v1}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$1(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v0, v2}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$2(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;F)V

    .line 58
    :cond_0
    sget-object v0, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v1}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;)F

    move-result v1

    iget-object v3, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v3}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 60
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-static {v0}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeOutSongFunction;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 63
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeOutSongFunction$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 65
    sget-object v0, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    return-void
.end method
