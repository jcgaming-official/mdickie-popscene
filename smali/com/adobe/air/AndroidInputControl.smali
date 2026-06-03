.class Lcom/adobe/air/AndroidInputControl;
.super Ljava/lang/Object;
.source "AndroidInputManager.java"


# instance fields
.field private mCode:I

.field private mInternalReference:J

.field private mMaxValue:F

.field private mMinValue:F

.field private mType:Lcom/adobe/air/ControlType;

.field private mValue:F


# direct methods
.method public constructor <init>(Lcom/adobe/air/ControlType;IFF)V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 390
    iput v0, p0, Lcom/adobe/air/AndroidInputControl;->mCode:I

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Lcom/adobe/air/AndroidInputControl;->mValue:F

    .line 392
    iput v0, p0, Lcom/adobe/air/AndroidInputControl;->mMinValue:F

    .line 393
    iput v0, p0, Lcom/adobe/air/AndroidInputControl;->mMaxValue:F

    .line 400
    iput-object p1, p0, Lcom/adobe/air/AndroidInputControl;->mType:Lcom/adobe/air/ControlType;

    .line 401
    iput p2, p0, Lcom/adobe/air/AndroidInputControl;->mCode:I

    .line 402
    iput p3, p0, Lcom/adobe/air/AndroidInputControl;->mMinValue:F

    .line 403
    iput p4, p0, Lcom/adobe/air/AndroidInputControl;->mMaxValue:F

    return-void
.end method

.method private native OnValueChange(JF)V
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/adobe/air/AndroidInputControl;->mCode:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/air/AndroidInputControl;->mType:Lcom/adobe/air/ControlType;

    invoke-virtual {v1}, Lcom/adobe/air/ControlType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/adobe/air/AndroidInputControl;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 434
    iget v0, p0, Lcom/adobe/air/AndroidInputControl;->mMaxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 429
    iget v0, p0, Lcom/adobe/air/AndroidInputControl;->mMinValue:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/adobe/air/AndroidInputControl;->mType:Lcom/adobe/air/ControlType;

    invoke-virtual {v0}, Lcom/adobe/air/ControlType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 424
    iget v0, p0, Lcom/adobe/air/AndroidInputControl;->mValue:F

    return v0
.end method

.method public setData(F)V
    .locals 2

    .line 444
    iget v0, p0, Lcom/adobe/air/AndroidInputControl;->mValue:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 446
    iput p1, p0, Lcom/adobe/air/AndroidInputControl;->mValue:F

    .line 449
    iget-wide v0, p0, Lcom/adobe/air/AndroidInputControl;->mInternalReference:J

    iget p1, p0, Lcom/adobe/air/AndroidInputControl;->mValue:F

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/AndroidInputControl;->OnValueChange(JF)V

    :cond_0
    return-void
.end method

.method public setInternalReference(J)V
    .locals 0

    .line 408
    iput-wide p1, p0, Lcom/adobe/air/AndroidInputControl;->mInternalReference:J

    return-void
.end method
