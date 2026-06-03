.class Lcom/adobe/air/AndroidWebViewAsync$2$1;
.super Ljava/lang/Thread;
.source "AndroidWebViewAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebViewAsync$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/AndroidWebViewAsync$2;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebViewAsync$2;Landroid/net/http/SslError;Ljava/lang/String;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->this$1:Lcom/adobe/air/AndroidWebViewAsync$2;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$error:Landroid/net/http/SslError;

    iput-object p3, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Lcom/adobe/air/SSLSecurityDialog;

    invoke-direct {v0}, Lcom/adobe/air/SSLSecurityDialog;-><init>()V

    .line 653
    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v2}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/SSLSecurityDialog;->show(Ljava/lang/String;Landroid/net/http/SslCertificate;)Ljava/lang/String;

    .line 654
    invoke-virtual {v0}, Lcom/adobe/air/SSLSecurityDialog;->getUserAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session"

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_1

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$2$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    :goto_1
    return-void
.end method
