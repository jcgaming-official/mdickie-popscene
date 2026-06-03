.class public Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;
.super Landroid/widget/ScrollView;
.source "AndroidStageTextAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageTextAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidStageTextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageTextAsync;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 164
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 170
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 175
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$400(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 210
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$400(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 211
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v3}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v4}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v5}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 212
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 213
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 192
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 194
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$000(Lcom/adobe/air/AndroidStageTextAsync;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 196
    invoke-static {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$002(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 197
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p1

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->sendDispatchCompleteEvent(J)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    return-void
.end method
