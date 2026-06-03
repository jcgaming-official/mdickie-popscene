.class Lcom/adobe/air/AndroidStageTextAsync$1;
.super Ljava/lang/Object;
.source "AndroidStageTextAsync.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageTextAsync;->addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageTextAsync;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 691
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/adobe/air/AndroidStageTextAsync;->access$1102(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    const/4 p1, 0x0

    const/16 v0, 0x42

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 716
    :pswitch_1
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    .line 718
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, p3, v0}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    .line 722
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    goto :goto_0

    .line 697
    :pswitch_2
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    move-result p1

    .line 699
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, p3, v0}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    return p1

    .line 707
    :pswitch_3
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    move-result p1

    .line 709
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$1;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, p3, v0}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    return p1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
