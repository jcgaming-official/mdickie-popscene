.class public Lcom/adobe/air/PanEventData;
.super Ljava/lang/Object;
.source "PanEventData.java"


# instance fields
.field mCurrentOrientation:I

.field mKeyboardHeight:I

.field surface:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/adobe/air/PanEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 37
    iput p2, p0, Lcom/adobe/air/PanEventData;->mCurrentOrientation:I

    .line 38
    iput p3, p0, Lcom/adobe/air/PanEventData;->mKeyboardHeight:I

    return-void
.end method
