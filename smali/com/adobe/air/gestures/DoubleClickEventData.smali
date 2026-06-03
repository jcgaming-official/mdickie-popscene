.class public Lcom/adobe/air/gestures/DoubleClickEventData;
.super Ljava/lang/Object;
.source "DoubleClickEventData.java"

# interfaces
.implements Lcom/adobe/air/gestures/GestureEventDataBase;


# instance fields
.field private mView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;FF)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/adobe/air/gestures/DoubleClickEventData;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 32
    iput p2, p0, Lcom/adobe/air/gestures/DoubleClickEventData;->mX:F

    .line 33
    iput p3, p0, Lcom/adobe/air/gestures/DoubleClickEventData;->mY:F

    return-void
.end method


# virtual methods
.method public sendEvent()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/adobe/air/gestures/DoubleClickEventData;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    iget v1, p0, Lcom/adobe/air/gestures/DoubleClickEventData;->mX:F

    iget v2, p0, Lcom/adobe/air/gestures/DoubleClickEventData;->mY:F

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnDoubleClickListener(FF)Z

    move-result v0

    return v0
.end method
