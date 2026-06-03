.class public Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "AndroidStageTextAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageTextAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundBorderDrawable"
.end annotation


# instance fields
.field public mBkgColor:I

.field public mBkgPaint:Landroid/graphics/Paint;

.field public mBorderColor:I

.field public mHaveBkg:Z

.field public mHaveBorder:Z

.field final synthetic this$0:Lcom/adobe/air/AndroidStageTextAsync;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 111
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 153
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBkg:Z

    const/4 p1, -0x1

    .line 154
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgColor:I

    const/high16 p1, -0x1000000

    .line 155
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBorderColor:I

    .line 112
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 117
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 153
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBkg:Z

    const/4 p1, -0x1

    .line 154
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgColor:I

    const/high16 p1, -0x1000000

    .line 155
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBorderColor:I

    .line 118
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBkg:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBorder:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setBkgColor(I)V
    .locals 1

    .line 142
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgColor:I

    .line 143
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 148
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBorderColor:I

    .line 149
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
