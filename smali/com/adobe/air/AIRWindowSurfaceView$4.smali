.class Lcom/adobe/air/AIRWindowSurfaceView$4;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;

.field final synthetic val$main_activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1507
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->val$main_activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1511
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$900(Lcom/adobe/air/AIRWindowSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$902(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z

    .line 1514
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$900(Lcom/adobe/air/AIRWindowSurfaceView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1516
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1200(Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 1519
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$800(Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1524
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->val$main_activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1526
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->val$main_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1534
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "SAMSUNG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView$4;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1300(Lcom/adobe/air/AIRWindowSurfaceView;Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0x400

    .line 1536
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    return-void
.end method
