.class public Lcom/adobe/air/AndroidWebViewAsync;
.super Ljava/lang/Object;
.source "AndroidWebViewAsync.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;,
        Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;
    }
.end annotation


# static fields
.field private static final ERROR_OTHER:I = 0x0

.field private static final ERROR_PROTOCOL_UNSUPPORTED:I = 0xc9d

.field private static final FOCUS_DOWN:I = 0x3

.field private static final FOCUS_NONE:I = 0x1

.field private static final FOCUS_UP:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidWebView"


# instance fields
.field private _host:Lcom/adobe/air/AndroidWebView;

.field private mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

.field private mGlobalBounds:Landroid/graphics/Rect;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mUrl:Ljava/lang/String;

.field private mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidWebView;)V
    .locals 4

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->_host:Lcom/adobe/air/AndroidWebView;

    .line 1204
    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    .line 1205
    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 1210
    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mUrl:Ljava/lang/String;

    .line 387
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->_host:Lcom/adobe/air/AndroidWebView;

    .line 388
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mContext:Landroid/content/Context;

    .line 389
    new-instance p1, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;-><init>(Lcom/adobe/air/AndroidWebViewAsync;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    .line 391
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 392
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 393
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 394
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 397
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getWebContentsDebuggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 400
    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-static {v1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setWebContentsDebuggingEnabled(Z)V

    .line 403
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getWebViewAllowFileAccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 406
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    .line 407
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 409
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 410
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 412
    :cond_3
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setScrollbarFadingEnabled(Z)V

    .line 413
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setScrollBarStyle(I)V

    .line 419
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    new-instance v0, Lcom/adobe/air/AndroidWebViewAsync$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidWebViewAsync$1;-><init>(Lcom/adobe/air/AndroidWebViewAsync;)V

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 586
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 587
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    new-instance v0, Lcom/adobe/air/AndroidWebViewAsync$2;

    invoke-direct {v0, p0, p0}, Lcom/adobe/air/AndroidWebViewAsync$2;-><init>(Lcom/adobe/air/AndroidWebViewAsync;Lcom/adobe/air/AndroidWebViewAsync;)V

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AIRWindowSurfaceView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/adobe/air/AndroidWebViewAsync;Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;)Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/adobe/air/AndroidWebViewAsync;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidWebViewAsync;)Landroid/graphics/Rect;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mGlobalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method private decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1040
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :catch_0
    return-object p1
.end method

.method private refreshGlobalBounds()V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    if-nez v0, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    new-instance v1, Lcom/adobe/air/AndroidWebViewAsync$4;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebViewAsync$4;-><init>(Lcom/adobe/air/AndroidWebViewAsync;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addedToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->removedFromStage()V

    .line 829
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 831
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 833
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 834
    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 835
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/AndroidWebViewAsync$3;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebViewAsync$3;-><init>(Lcom/adobe/air/AndroidWebViewAsync;Lcom/adobe/air/AndroidActivityWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public adjustViewBounds(DDDD)V
    .locals 3

    .line 967
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double/2addr p1, p5

    double-to-int p1, p1

    add-double/2addr p3, p7

    double-to-int p2, p3

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    .line 968
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 969
    invoke-direct {p0}, Lcom/adobe/air/AndroidWebViewAsync;->refreshGlobalBounds()V

    return-void
.end method

.method public assignFocus(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1122
    :pswitch_0
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->pageDown(Z)Z

    .line 1123
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->requestFocus(I)Z

    goto :goto_0

    .line 1117
    :pswitch_1
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->pageUp(Z)Z

    .line 1118
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->requestFocus(I)Z

    goto :goto_0

    .line 1113
    :pswitch_2
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->requestFocus()Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canGoBack()Z
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-object v0

    .line 1152
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1153
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1154
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1157
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1160
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->isHorizontalScrollBarEnabled()Z

    move-result v0

    .line 1161
    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->isVerticalScrollBarEnabled()Z

    move-result v1

    .line 1164
    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1165
    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v2, v3}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setVerticalScrollBarEnabled(Z)V

    .line 1170
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v2, p2}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1173
    :catch_0
    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 1175
    iget-object v3, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getScale()F

    move-result v3

    .line 1176
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1178
    invoke-virtual {v2, p2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1182
    :goto_0
    iget-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {p2, v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1183
    iget-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {p2, v1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setVerticalScrollBarEnabled(Z)V

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public clearFocus()V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->clearFocus()V

    .line 1131
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    return-void
.end method

.method public destroyInternals()V
    .locals 1

    .line 768
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->removedFromStage()V

    .line 770
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->destroy()V

    const/4 v0, 0x0

    .line 771
    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    return-void
.end method

.method public enableLocalDomStorage()V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    goto :goto_0

    .line 1087
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidWebViewAsync;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHost()Lcom/adobe/air/AndroidWebView;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->_host:Lcom/adobe/air/AndroidWebView;

    return-object v0
.end method

.method public getMediaPlaybackRequiresUserAction()Z
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->goBack()V

    return-void
.end method

.method public goForward()V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->goForward()V

    return-void
.end method

.method public isInTextEditingMode()Z
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->isInTextEditingMode()Z

    move-result v0

    return v0
.end method

.method public loadString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string p2, "utf-8"

    .line 977
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 985
    array-length p2, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt p2, v2, :cond_0

    aget-byte p2, p1, v3

    const/16 v4, 0xef

    if-ne p2, v4, :cond_0

    aget-byte p2, p1, v1

    const/16 v4, 0xbb

    if-ne p2, v4, :cond_0

    aget-byte p2, p1, v0

    const/16 v4, 0xbf

    if-ne p2, v4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 993
    array-length p2, p1

    add-int/2addr p2, v2

    new-array p2, p2, [B

    .line 994
    array-length v4, p1

    invoke-static {p1, v3, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, -0x11

    .line 995
    aput-byte p1, p2, v3

    const/16 p1, -0x45

    .line 996
    aput-byte p1, p2, v1

    const/16 p1, -0x41

    .line 997
    aput-byte p1, p2, v0

    move-object p1, p2

    .line 1002
    :cond_1
    array-length p2, p1

    invoke-static {p1, v3, p2, v0}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    .line 1005
    iget-object p2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    const-string v0, "text/html"

    const-string v1, "base64"

    invoke-virtual {p2, p1, v0, v1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public loadURL(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 6

    .line 713
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "isPaused"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 714
    const-class v1, Landroid/webkit/WebView;

    const-string v3, "onResume"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 715
    const-class v3, Landroid/webkit/WebView;

    const-string v4, "onPause"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 717
    iget-object v4, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 719
    sget-object v4, Lcom/adobe/air/AndroidWebViewAsync$5;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->pauseTimers()V

    .line 733
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :catch_0
    :cond_0
    :goto_0
    sget-object v0, Lcom/adobe/air/AndroidWebViewAsync$5;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 750
    :pswitch_2
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    if-eqz p1, :cond_1

    .line 752
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;->onHideCustomView()V

    const/4 p1, 0x0

    .line 753
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    goto :goto_1

    .line 746
    :pswitch_3
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    if-nez p1, :cond_1

    .line 747
    new-instance p1, Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    invoke-direct {p1, p0}, Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;-><init>(Lcom/adobe/air/AndroidWebViewAsync;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mCustomViewHolder:Lcom/adobe/air/AndroidWebViewAsync$WebViewCustomView;

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLoadComplete(Ljava/lang/String;)V
    .locals 5

    .line 1059
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->internalReference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1065
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mUrl:Ljava/lang/String;

    .line 1067
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidWebView;->dispatchLoadCompleteJ()V

    return-void
.end method

.method public onLoadError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1072
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->internalReference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1076
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mUrl:Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/adobe/air/AndroidWebView;->dispatchLoadErrorJ(Ljava/lang/String;I)V

    return-void
.end method

.method public onLocationChange(Ljava/lang/String;)Z
    .locals 5

    .line 1025
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->internalReference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1031
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mUrl:Ljava/lang/String;

    .line 1033
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidWebView;->dispatchLocationChangeJ()Z

    move-result p1

    return p1
.end method

.method public onLocationChanging(Ljava/lang/String;)Z
    .locals 5

    .line 1047
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->internalReference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidWebView;->dispatchLocationChangingJ(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public reload()V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->reload()V

    return-void
.end method

.method public removedFromStage()V
    .locals 4

    .line 848
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 851
    iput-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mLayout:Landroid/widget/RelativeLayout;

    .line 854
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->didRemoveOverlay()V

    .line 856
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 858
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->getHost()Lcom/adobe/air/AndroidWebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V

    .line 861
    :cond_0
    iput-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 935
    invoke-direct {p0}, Lcom/adobe/air/AndroidWebViewAsync;->refreshGlobalBounds()V

    return-void
.end method

.method public setMediaPlaybackRequiresUserAction(Z)V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 789
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method

.method public setStageFocus(I)V
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->clearFocus()V

    .line 1138
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus(I)Z

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 868
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 871
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mView:Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync$AndroidWebViewImpl;->stopLoading()V

    return-void
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 5

    .line 878
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 880
    iget-object v0, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebViewAsync;->isInTextEditingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/AndroidWebViewAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 884
    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 889
    iget-object v2, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 890
    iget-object v3, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-wide/16 v3, 0x0

    if-ne v2, p1, :cond_0

    return-wide v3

    .line 899
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p1, v1

    if-gtz v1, :cond_1

    return-wide v3

    :cond_1
    if-gt v1, v2, :cond_2

    goto :goto_0

    .line 920
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 921
    iget-object p1, p0, Lcom/adobe/air/AndroidWebViewAsync;->mGlobalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    move v1, v2

    .line 927
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidWebViewAsync;->refreshGlobalBounds()V

    int-to-long v0, v1

    return-wide v0
.end method
