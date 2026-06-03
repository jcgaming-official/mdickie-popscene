.class Lcom/adobe/air/AndroidWebViewAsync$3;
.super Ljava/lang/Object;
.source "AndroidWebViewAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebViewAsync;->addedToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebViewAsync;

.field final synthetic val$activityWrapper:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebViewAsync;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 835
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$3;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$3;->val$activityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 838
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 839
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$3;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync$3;->val$activityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidWebViewAsync;->access$602(Lcom/adobe/air/AndroidWebViewAsync;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 840
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$3;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebViewAsync;->access$600(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync$3;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidWebViewAsync;->access$100(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
