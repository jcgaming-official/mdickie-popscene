.class Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;
.super Ljava/util/TimerTask;
.source "FadeInSongFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newpixel/songpicker/functions/FadeInSongFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

.field private final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/newpixel/songpicker/functions/FadeInSongFunction;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    iput-object p2, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->val$timer:Ljava/util/Timer;

    .line 55
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v0}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v1

    iget-object v2, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v2}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$1(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$2(Lcom/newpixel/songpicker/functions/FadeInSongFunction;F)V

    .line 61
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v0}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v0

    iget-object v1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v1}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$3(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    iget-object v1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v1}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$3(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$2(Lcom/newpixel/songpicker/functions/FadeInSongFunction;F)V

    .line 64
    :cond_0
    sget-object v0, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v1}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v1

    iget-object v2, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v2}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 66
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v0}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$0(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v0

    iget-object v1, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->this$0:Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-static {v1}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;->access$3(Lcom/newpixel/songpicker/functions/FadeInSongFunction;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 69
    iget-object v0, p0, Lcom/newpixel/songpicker/functions/FadeInSongFunction$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 71
    sget-object v0, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    return-void
.end method
