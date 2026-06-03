.class public Lcom/adobe/air/AndroidWebView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/adobe/air/Entrypoints$AsyncEntryHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidWebView"


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _initialized:Z

.field private _mediaPlaybackRequiresUserAction:Z

.field private _webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

.field private mInternalReference:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_mediaPlaybackRequiresUserAction:Z

    const-wide/16 v0, 0x0

    .line 525
    iput-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    .line 71
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    .line 72
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$1;

    invoke-direct {v1, p0, p0}, Lcom/adobe/air/AndroidWebView$1;-><init>(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebViewAsync;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidWebView;->_webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

    return-object p0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AndroidWebViewAsync;)Lcom/adobe/air/AndroidWebViewAsync;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView;->_webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidWebView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    return p0
.end method

.method static synthetic access$102(Lcom/adobe/air/AndroidWebView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    return p1
.end method

.method private decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 276
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

.method private native dispatchFocusIn(JI)V
.end method

.method private native dispatchFocusOut(JI)V
.end method

.method private native dispatchLoadComplete(J)V
.end method

.method private native dispatchLoadError(JLjava/lang/String;I)V
.end method

.method private native dispatchLocationChange(J)Z
.end method

.method private native dispatchLocationChanging(JLjava/lang/String;)Z
.end method

.method private sendDispatchFocusIn(JI)V
    .locals 8

    .line 484
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidWebView;->dispatchFocusIn(JI)V

    goto :goto_0

    .line 487
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 488
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    .line 489
    new-array v3, v2, [Ljava/lang/Class;

    .line 490
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 491
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 492
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "dispatchFocusIn"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 495
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such method for send focus in: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendDispatchFocusOut(JI)V
    .locals 8

    .line 500
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 501
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidWebView;->dispatchFocusOut(JI)V

    goto :goto_0

    .line 503
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 504
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    .line 505
    new-array v3, v2, [Ljava/lang/Class;

    .line 506
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 507
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 508
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "dispatchFocusOut"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 509
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 511
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such method for send focus out: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendDispatchLoadComplete(J)V
    .locals 8

    .line 469
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidWebView;->dispatchLoadComplete(J)V

    goto :goto_0

    .line 472
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 473
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 474
    new-array v3, v2, [Ljava/lang/Class;

    .line 475
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 476
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "dispatchLoadComplete"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such method for send load complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendDispatchLoadError(JLjava/lang/String;I)V
    .locals 10

    .line 452
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 453
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/air/AndroidWebView;->dispatchLoadError(JLjava/lang/String;I)V

    goto :goto_0

    .line 455
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 456
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    .line 457
    new-array v3, v2, [Ljava/lang/Class;

    .line 458
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 459
    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 460
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 461
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "dispatchLoadError"

    invoke-virtual {v8, v9, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object p3, v2, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 464
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No such method for send load error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendDispatchLocationChange(J)Z
    .locals 8

    .line 414
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidWebView;->dispatchLocationChange(J)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 417
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x465

    .line 418
    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    .line 419
    new-array v4, v3, [Ljava/lang/Class;

    .line 420
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 421
    new-instance v5, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "dispatchLocationChange"

    invoke-virtual {v6, v7, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v5, p0, v4, v3, p1}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    invoke-virtual {v5}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->getResult()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such method for location change event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sendDispatchLocationChanging(JLjava/lang/String;)Z
    .locals 9

    .line 433
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidWebView;->dispatchLocationChanging(JLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 436
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x465

    .line 437
    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    .line 438
    new-array v4, v3, [Ljava/lang/Class;

    .line 439
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 440
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 441
    new-instance v5, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "dispatchLocationChange"

    invoke-virtual {v7, v8, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    aput-object p3, v3, v6

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v5, p0, v4, v3, p1}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    invoke-virtual {v5}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;->getResult()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 446
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such method for location changing event: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addedToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$9;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebView$9;-><init>(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public adjustViewBounds(DDDD)V
    .locals 13

    move-object v10, p0

    .line 244
    iget-object v11, v10, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v12, Lcom/adobe/air/AndroidWebView$14;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/adobe/air/AndroidWebView$14;-><init>(Lcom/adobe/air/AndroidWebView;DDDD)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public assignFocus(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$17;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebView$17;-><init>(Lcom/adobe/air/AndroidWebView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync;->canGoBack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync;->canGoForward()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x1

    .line 327
    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 328
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v2, Lcom/adobe/air/AndroidWebView$20;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/adobe/air/AndroidWebView$20;-><init>(Lcom/adobe/air/AndroidWebView;[Landroid/graphics/Bitmap;II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 334
    aget-object p1, v0, p1

    return-object p1
.end method

.method public clearFocus()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$18;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$18;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyInternals()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    .line 106
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$3;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method dispatchFocusInJ(I)V
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/AndroidWebView;->sendDispatchFocusIn(JI)V

    return-void
.end method

.method dispatchFocusOutJ(I)V
    .locals 2

    .line 368
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/AndroidWebView;->sendDispatchFocusOut(JI)V

    return-void
.end method

.method dispatchLoadCompleteJ()V
    .locals 2

    .line 360
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidWebView;->sendDispatchLoadComplete(J)V

    return-void
.end method

.method dispatchLoadErrorJ(Ljava/lang/String;I)V
    .locals 2

    .line 356
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/adobe/air/AndroidWebView;->sendDispatchLoadError(JLjava/lang/String;I)V

    return-void
.end method

.method dispatchLocationChangeJ()Z
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidWebView;->sendDispatchLocationChange(J)Z

    move-result v0

    return v0
.end method

.method dispatchLocationChangingJ(Ljava/lang/String;)Z
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/AndroidWebView;->sendDispatchLocationChanging(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public enableLocalDomStorage()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$2;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync;->getCurrentLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMediaPlaybackRequiresUserAction()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_mediaPlaybackRequiresUserAction:Z

    return v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync;->getPageTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$7;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$7;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goForward()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$8;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$8;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public internalReference()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    return-wide v0
.end method

.method public isInTextEditingMode()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView;->_initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_webViewAsync:Lcom/adobe/air/AndroidWebViewAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebViewAsync;->isInTextEditingMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/air/AndroidWebView$15;-><init>(Lcom/adobe/air/AndroidWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadURL(Ljava/lang/String;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$16;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebView$16;-><init>(Lcom/adobe/air/AndroidWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reload()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$5;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$5;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removedFromStage()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$10;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$10;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetGlobalBounds()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$13;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$13;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInternalReference(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    return-void
.end method

.method public setMediaPlaybackRequiresUserAction(Z)V
    .locals 2

    .line 139
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView;->_mediaPlaybackRequiresUserAction:Z

    .line 140
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$6;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebView$6;-><init>(Lcom/adobe/air/AndroidWebView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStageFocus(I)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$19;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebView$19;-><init>(Lcom/adobe/air/AndroidWebView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$11;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidWebView$11;-><init>(Lcom/adobe/air/AndroidWebView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidWebView$4;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$4;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 3

    const/4 v0, 0x1

    .line 219
    new-array v0, v0, [J

    .line 220
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->_activity:Landroid/app/Activity;

    new-instance v2, Lcom/adobe/air/AndroidWebView$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/adobe/air/AndroidWebView$12;-><init>(Lcom/adobe/air/AndroidWebView;[JI)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 229
    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public wrapperInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Z
    .locals 7

    .line 378
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 385
    :try_start_0
    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 386
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto/16 :goto_2

    .line 387
    :cond_1
    array-length v3, v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    .line 401
    new-array v1, v6, [Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    const/4 p2, 0x4

    .line 398
    new-array p2, p2, [Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, p2, v2

    aget-object v3, v1, v6

    aput-object v3, p2, v6

    aget-object v3, v1, v5

    aput-object v3, p2, v5

    aget-object v1, v1, v4

    aput-object v1, p2, v4

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 395
    :pswitch_1
    new-array p2, v4, [Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, p2, v2

    aget-object v3, v1, v6

    aput-object v3, p2, v6

    aget-object v1, v1, v5

    aput-object v1, p2, v5

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 392
    :pswitch_2
    new-array p2, v5, [Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, p2, v2

    aget-object v1, v1, v6

    aput-object v1, p2, v6

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 389
    :pswitch_3
    new-array p2, v6, [Ljava/lang/Object;

    aget-object v1, v1, v2

    aput-object v1, p2, v2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    aput-object p2, v1, v2

    .line 401
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when invoking webview method asynchronously: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_2

    .line 407
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
