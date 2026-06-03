.class Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;
.super Landroid/os/ResultReceiver;
.source "AIRWindowSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRWindowSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputMethodReceiver"
.end annotation


# instance fields
.field private _surface:Lcom/adobe/air/AIRWindowSurfaceView;

.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 999
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1000
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;->_surface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    new-instance p1, Lcom/adobe/air/WindowEventData;

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;->_surface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p1, v2, v1, v1}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IZ)V

    invoke-static {v0, p1, p2}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    goto :goto_1

    .line 1011
    :cond_1
    :goto_0
    new-instance p1, Lcom/adobe/air/WindowEventData;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;->_surface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v2, 0x6

    invoke-direct {p1, v1, v2, v0}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IZ)V

    invoke-static {v0, p1, p2}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    :goto_1
    return-void
.end method
