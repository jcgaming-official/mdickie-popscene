.class Lcom/adobe/air/AndroidWebViewAsync$2;
.super Landroid/webkit/WebViewClient;
.source "AndroidWebViewAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebViewAsync;-><init>(Lcom/adobe/air/AndroidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPageStartedUrl:Ljava/lang/String;

.field private mNoCompleteForUrl:Z

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/air/AndroidWebViewAsync;

.field final synthetic val$webView:Lcom/adobe/air/AndroidWebViewAsync;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebViewAsync;Lcom/adobe/air/AndroidWebViewAsync;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->val$webView:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 589
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mUrl:Ljava/lang/String;

    .line 590
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mLastPageStartedUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 591
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mNoCompleteForUrl:Z

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 677
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mLastPageStartedUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mLastPageStartedUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->val$webView:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidWebViewAsync;->onLocationChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 625
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mNoCompleteForUrl:Z

    if-eqz v0, :cond_0

    .line 629
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mNoCompleteForUrl:Z

    return-void

    .line 633
    :cond_0
    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mUrl:Ljava/lang/String;

    .line 634
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mNoCompleteForUrl:Z

    .line 635
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->val$webView:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidWebViewAsync;->onLoadComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 596
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 599
    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mUrl:Ljava/lang/String;

    .line 605
    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mLastPageStartedUrl:Ljava/lang/String;

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x1

    .line 686
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mNoCompleteForUrl:Z

    const/16 p1, -0xa

    if-ne p2, p1, :cond_0

    .line 689
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->val$webView:Lcom/adobe/air/AndroidWebViewAsync;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc9d

    invoke-virtual {p1, p4, p2, p3}, Lcom/adobe/air/AndroidWebViewAsync;->onLoadError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->val$webView:Lcom/adobe/air/AndroidWebViewAsync;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/adobe/air/AndroidWebViewAsync;->onLoadError(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 641
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mUrl:Ljava/lang/String;

    .line 647
    new-instance v0, Lcom/adobe/air/AndroidWebViewAsync$2$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/adobe/air/AndroidWebViewAsync$2$1;-><init>(Lcom/adobe/air/AndroidWebViewAsync$2;Landroid/net/http/SslError;Ljava/lang/String;Landroid/webkit/SslErrorHandler;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 613
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->val$webView:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidWebViewAsync;->onLocationChanging(Ljava/lang/String;)Z

    move-result p1

    .line 616
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebViewAsync$2;->mNoCompleteForUrl:Z

    return p1
.end method
