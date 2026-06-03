.class Lcom/adobe/air/AndroidWebView$12;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;->updateViewBoundsWithKeyboard(I)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;

.field final synthetic val$results:[J

.field final synthetic val$windowHeight:I


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;[JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$12;->this$0:Lcom/adobe/air/AndroidWebView;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$12;->val$results:[J

    iput p3, p0, Lcom/adobe/air/AndroidWebView$12;->val$windowHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$12;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$12;->val$results:[J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$12;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v2}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebViewAsync;

    move-result-object v2

    iget v3, p0, Lcom/adobe/air/AndroidWebView$12;->val$windowHeight:I

    invoke-virtual {v2, v3}, Lcom/adobe/air/AndroidWebViewAsync;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method
