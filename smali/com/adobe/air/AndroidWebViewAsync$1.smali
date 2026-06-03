.class Lcom/adobe/air/AndroidWebViewAsync$1;
.super Landroid/webkit/WebChromeClient;
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
.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessages:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/air/AndroidWebViewAsync;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebViewAsync;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidWebViewAsync$1;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/adobe/air/AndroidWebViewAsync$1;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidWebViewAsync$1;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessages:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$502(Lcom/adobe/air/AndroidWebViewAsync$1;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessages:Landroid/webkit/ValueCallback;

    return-object p1
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebViewAsync;->access$300(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebViewAsync;->access$300(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 11

    .line 550
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    .line 553
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v6, v0, v3

    const/4 v7, -0x1

    .line 555
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x62fe2171

    const/4 v10, 0x1

    if-eq v8, v9, :cond_1

    const v9, 0x39bbdaea

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const-string v8, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v7, 0x0

    :cond_2
    :goto_1
    packed-switch v7, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v6, 0x2

    goto :goto_2

    :pswitch_1
    const/4 v6, 0x4

    :goto_2
    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 568
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/adobe/air/AndroidActivityWrapper;->checkPermission(I)I

    move-result v6

    if-ne v6, v10, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-lez v4, :cond_5

    if-ne v4, v5, :cond_5

    .line 575
    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_3

    .line 577
    :cond_5
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 582
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebViewAsync;->access$300(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    new-instance v1, Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-direct {v1, v2}, Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;-><init>(Lcom/adobe/air/AndroidWebViewAsync;)V

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidWebViewAsync;->access$302(Lcom/adobe/air/AndroidWebViewAsync;Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;)Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->this$0:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidWebViewAsync;->access$300(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 481
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessages:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 483
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p1, v1, :cond_1

    return v0

    .line 485
    :cond_1
    iput-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessages:Landroid/webkit/ValueCallback;

    .line 487
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 488
    new-instance v1, Lcom/adobe/air/AndroidWebViewAsync$1$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebViewAsync$1$2;-><init>(Lcom/adobe/air/AndroidWebViewAsync$1;Lcom/adobe/air/AndroidActivityWrapper;)V

    .line 532
    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 534
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p3

    .line 536
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x5

    .line 537
    invoke-virtual {p1, p3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    .line 540
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessages:Landroid/webkit/ValueCallback;

    .line 541
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync$1;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 445
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 446
    new-instance v0, Lcom/adobe/air/AndroidWebViewAsync$1$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/air/AndroidWebViewAsync$1$1;-><init>(Lcom/adobe/air/AndroidWebViewAsync$1;Lcom/adobe/air/AndroidActivityWrapper;)V

    .line 467
    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v1, ""

    .line 474
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
