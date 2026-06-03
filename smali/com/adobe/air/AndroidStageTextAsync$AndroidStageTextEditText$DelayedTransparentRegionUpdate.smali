.class Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;
.super Ljava/lang/Object;
.source "AndroidStageTextAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedTransparentRegionUpdate"
.end annotation


# instance fields
.field private m_AIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private m_freqMsecs:I

.field private m_nUpdates:I

.field private m_stageText:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

.field final synthetic this$1:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;IILcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->this$1:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput p2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_nUpdates:I

    .line 305
    iput p3, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_freqMsecs:I

    .line 306
    iput-object p4, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_stageText:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    .line 307
    iput-object p5, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_AIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_stageText:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_AIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_stageText:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_AIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->requestTransparentRegion(Landroid/view/View;)V

    .line 316
    :cond_0
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_nUpdates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_nUpdates:I

    if-lez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_stageText:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    iget v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;->m_freqMsecs:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
