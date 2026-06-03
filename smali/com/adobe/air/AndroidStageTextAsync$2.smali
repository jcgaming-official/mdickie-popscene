.class Lcom/adobe/air/AndroidStageTextAsync$2;
.super Ljava/lang/Object;
.source "AndroidStageTextAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageTextAsync;->refreshGlobalBounds(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageTextAsync;

.field final synthetic val$doCompleteDispatch:Z


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 843
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    iput-boolean p2, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->val$doCompleteDispatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$500(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$1200(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v2}, Lcom/adobe/air/AndroidStageTextAsync;->access$1200(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 853
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$1200(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 854
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$1200(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 856
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$500(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$500(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->requestLayout()V

    .line 862
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->val$doCompleteDispatch:Z

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$2;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$002(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    :cond_1
    return-void
.end method
