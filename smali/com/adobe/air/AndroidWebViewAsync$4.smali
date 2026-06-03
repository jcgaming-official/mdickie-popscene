.class Lcom/adobe/air/AndroidWebViewAsync$4;
.super Ljava/lang/Object;
.source "AndroidWebViewAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebViewAsync;->refreshGlobalBounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebViewAsync;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebViewAsync;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebViewAsync;->access$100(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 950
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidWebViewAsync;->access$700(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v2}, Lcom/adobe/air/AndroidWebViewAsync;->access$700(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 951
    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidWebViewAsync;->access$700(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 952
    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidWebViewAsync;->access$700(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 954
    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidWebViewAsync;->access$100(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$4;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebViewAsync;->access$100(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->requestLayout()V

    return-void
.end method
