.class Lcom/adobe/air/AIRWindowSurfaceView$3;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;

.field final synthetic val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1483
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 5

    .line 1486
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1488
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getIsFullScreen()Z

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1490
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$800(Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 1492
    new-instance p1, Lcom/adobe/air/WindowEventData;

    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v4, 0x1

    invoke-direct {p1, v3, v1, v4}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IZ)V

    invoke-static {v2, p1, v0}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    goto :goto_0

    .line 1497
    :cond_0
    new-instance p1, Lcom/adobe/air/WindowEventData;

    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p1, v3, v1, v2}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IZ)V

    invoke-static {v2, p1, v0}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    :goto_0
    return-void
.end method
