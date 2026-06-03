.class public Lcom/adobe/air/gestures/GestureEventData;
.super Ljava/lang/Object;
.source "GestureEventData.java"

# interfaces
.implements Lcom/adobe/air/gestures/GestureEventDataBase;


# instance fields
.field private mGesturePhase:I

.field private mGestureType:I

.field private mIsTransform:Z

.field private mListener:Lcom/adobe/air/gestures/AIRGestureListener;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mRotation:F

.field private mScaleX:F

.field private mScaleY:F

.field private mVelocity:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Lcom/adobe/air/gestures/AIRGestureListener;IIZFFFFFFFF)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/adobe/air/gestures/GestureEventData;->mListener:Lcom/adobe/air/gestures/AIRGestureListener;

    .line 40
    iput p2, p0, Lcom/adobe/air/gestures/GestureEventData;->mGesturePhase:I

    .line 41
    iput p3, p0, Lcom/adobe/air/gestures/GestureEventData;->mGestureType:I

    .line 42
    iput-boolean p4, p0, Lcom/adobe/air/gestures/GestureEventData;->mIsTransform:Z

    .line 43
    iput p5, p0, Lcom/adobe/air/gestures/GestureEventData;->mX:F

    .line 44
    iput p6, p0, Lcom/adobe/air/gestures/GestureEventData;->mY:F

    .line 45
    iput p7, p0, Lcom/adobe/air/gestures/GestureEventData;->mScaleX:F

    .line 46
    iput p8, p0, Lcom/adobe/air/gestures/GestureEventData;->mScaleY:F

    .line 47
    iput p9, p0, Lcom/adobe/air/gestures/GestureEventData;->mRotation:F

    .line 48
    iput p10, p0, Lcom/adobe/air/gestures/GestureEventData;->mOffsetX:F

    .line 49
    iput p11, p0, Lcom/adobe/air/gestures/GestureEventData;->mOffsetY:F

    .line 50
    iput p12, p0, Lcom/adobe/air/gestures/GestureEventData;->mVelocity:F

    return-void
.end method


# virtual methods
.method public sendEvent()Z
    .locals 12

    .line 55
    iget-object v0, p0, Lcom/adobe/air/gestures/GestureEventData;->mListener:Lcom/adobe/air/gestures/AIRGestureListener;

    iget v1, p0, Lcom/adobe/air/gestures/GestureEventData;->mGesturePhase:I

    iget v2, p0, Lcom/adobe/air/gestures/GestureEventData;->mGestureType:I

    iget-boolean v3, p0, Lcom/adobe/air/gestures/GestureEventData;->mIsTransform:Z

    iget v4, p0, Lcom/adobe/air/gestures/GestureEventData;->mX:F

    iget v5, p0, Lcom/adobe/air/gestures/GestureEventData;->mY:F

    iget v6, p0, Lcom/adobe/air/gestures/GestureEventData;->mScaleX:F

    iget v7, p0, Lcom/adobe/air/gestures/GestureEventData;->mScaleY:F

    iget v8, p0, Lcom/adobe/air/gestures/GestureEventData;->mRotation:F

    iget v9, p0, Lcom/adobe/air/gestures/GestureEventData;->mOffsetX:F

    iget v10, p0, Lcom/adobe/air/gestures/GestureEventData;->mOffsetY:F

    iget v11, p0, Lcom/adobe/air/gestures/GestureEventData;->mVelocity:F

    invoke-virtual/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    move-result v0

    return v0
.end method
