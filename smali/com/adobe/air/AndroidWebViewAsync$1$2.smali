.class Lcom/adobe/air/AndroidWebViewAsync$1$2;
.super Ljava/lang/Object;
.source "AndroidWebViewAsync.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebViewAsync$1;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/AndroidWebViewAsync$1;

.field final synthetic val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebViewAsync$1;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1$2;->this$1:Lcom/adobe/air/AndroidWebViewAsync$1;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$1$2;->val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1$2;->this$1:Lcom/adobe/air/AndroidWebViewAsync$1;

    invoke-static {p1}, Lcom/adobe/air/AndroidWebViewAsync$1;->access$500(Lcom/adobe/air/AndroidWebViewAsync$1;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 502
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    .line 503
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 504
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    .line 508
    new-array v0, p3, [Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 511
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-eqz v0, :cond_2

    .line 516
    :try_start_2
    new-array p2, p2, [Landroid/net/Uri;

    aput-object v0, p2, v1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_4

    .line 520
    new-array p2, p2, [Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, p1

    :catch_1
    :cond_3
    move-object p2, v0

    goto :goto_1

    :cond_4
    move-object p2, p1

    .line 524
    :goto_1
    iget-object p3, p0, Lcom/adobe/air/AndroidWebViewAsync$1$2;->this$1:Lcom/adobe/air/AndroidWebViewAsync$1;

    invoke-static {p3}, Lcom/adobe/air/AndroidWebViewAsync$1;->access$500(Lcom/adobe/air/AndroidWebViewAsync$1;)Landroid/webkit/ValueCallback;

    move-result-object p3

    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 525
    iget-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$1$2;->this$1:Lcom/adobe/air/AndroidWebViewAsync$1;

    invoke-static {p2, p1}, Lcom/adobe/air/AndroidWebViewAsync$1;->access$502(Lcom/adobe/air/AndroidWebViewAsync$1;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 528
    :cond_5
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1$2;->val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    return-void
.end method
