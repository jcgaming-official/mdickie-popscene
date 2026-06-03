.class Lcom/adobe/air/AndroidWebView$20;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;->captureSnapshot(II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;

.field final synthetic val$height:I

.field final synthetic val$results:[Landroid/graphics/Bitmap;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;[Landroid/graphics/Bitmap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$20;->this$0:Lcom/adobe/air/AndroidWebView;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$20;->val$results:[Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/adobe/air/AndroidWebView$20;->val$width:I

    iput p4, p0, Lcom/adobe/air/AndroidWebView$20;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$20;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$20;->val$results:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$20;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v2}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebViewAsync;

    move-result-object v2

    iget v3, p0, Lcom/adobe/air/AndroidWebView$20;->val$width:I

    iget v4, p0, Lcom/adobe/air/AndroidWebView$20;->val$height:I

    invoke-virtual {v2, v3, v4}, Lcom/adobe/air/AndroidWebViewAsync;->captureSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method
