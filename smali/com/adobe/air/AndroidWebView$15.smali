.class Lcom/adobe/air/AndroidWebView$15;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;->loadString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$15;->this$0:Lcom/adobe/air/AndroidWebView;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$15;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/air/AndroidWebView$15;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$15;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$15;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebViewAsync;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$15;->val$data:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$15;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidWebViewAsync;->loadString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
