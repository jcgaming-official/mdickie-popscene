.class Lcom/adobe/air/AIRWindowSurfaceView$5;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRWindowSurfaceView;->clearFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;

.field final synthetic val$main_activity:Landroid/app/Activity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1548
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->val$main_activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1554
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$902(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z

    .line 1555
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->access$900(Lcom/adobe/air/AIRWindowSurfaceView;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1557
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1400()Z

    move-result v0

    .line 1560
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1200(Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 1561
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->val$main_activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1565
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->val$main_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 1566
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1569
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$5;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method
