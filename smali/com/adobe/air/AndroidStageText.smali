.class public Lcom/adobe/air/AndroidStageText;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Lcom/adobe/air/Entrypoints$AsyncEntryHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidStageText"


# instance fields
.field private _act:Landroid/app/Activity;

.field private _stageText:Lcom/adobe/air/AndroidStageTextAsync;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    .line 89
    new-instance v0, Lcom/adobe/air/AndroidStageTextAsync;

    invoke-direct {v0, p1, p0}, Lcom/adobe/air/AndroidStageTextAsync;-><init>(ZLcom/adobe/air/AndroidStageText;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageTextAsync;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    return-object p0
.end method

.method private native dispatchChangeEvent(J)V
.end method

.method private native dispatchCompleteEvent(J)V
.end method

.method private native dispatchFocusIn(JI)V
.end method

.method private native dispatchFocusOut(JI)V
.end method

.method private native handleKeyEvent(JII)Z
.end method

.method private native invokeSoftKeyboard(J)V
.end method


# virtual methods
.method public addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$2;-><init>(Lcom/adobe/air/AndroidStageText;Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public adjustViewBounds(DDDDD)V
    .locals 15

    move-object v12, p0

    .line 160
    iget-object v13, v12, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v14, Lcom/adobe/air/AndroidStageText$5;

    move-object v0, v14

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/AndroidStageText$5;-><init>(Lcom/adobe/air/AndroidStageText;DDDDD)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public assignFocus()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$32;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$32;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 8

    .line 580
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidStageTextAsync;->captureSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 583
    :cond_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v0, 0x1

    .line 584
    new-array v6, v0, [Landroid/graphics/Bitmap;

    .line 585
    new-instance v7, Lcom/adobe/air/AndroidStageText$35;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/AndroidStageText$35;-><init>(Lcom/adobe/air/AndroidStageText;[Landroid/graphics/Bitmap;Lcom/adobe/air/AndroidStageTextAsync;II)V

    .line 596
    monitor-enter v7

    .line 597
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    invoke-virtual {p1, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 599
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p2, "AdobeAIR"

    const-string v0, "Interrupted trying to capture StageText bitmap"

    .line 601
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    aput-object p2, v6, p1

    .line 604
    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    aget-object p1, v6, p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 604
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public clearFocus()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$33;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$33;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearRestrict()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$21;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$21;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyInternals()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageTextAsync;->destroyInternals()V

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    .line 105
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v2, Lcom/adobe/air/AndroidStageText$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/air/AndroidStageText$1;-><init>(Lcom/adobe/air/AndroidStageText;Lcom/adobe/air/AndroidStageTextAsync;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAlign()I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getAlign()I

    move-result v0

    return v0
.end method

.method public getAutoCapitalize()I
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getAutoCapitalize()I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getBorderColor()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getFontSize()I

    move-result v0

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getKeyboardType()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxChars()I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getMaxChars()I

    move-result v0

    return v0
.end method

.method public getPreventDefault()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getPreventDefault()Z

    move-result v0

    return v0
.end method

.method public getRestrict()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getRestrict()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnKeyLabel()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getReturnKeyLabel()I

    move-result v0

    return v0
.end method

.method public getSelectionActiveIndex()I
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getSelectionActiveIndex()I

    move-result v0

    return v0
.end method

.method public getSelectionAnchorIndex()I
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getSelectionAnchorIndex()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->getTextColor()I

    move-result v0

    return v0
.end method

.method public isContextValid()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->isContextValid()Z

    move-result v0

    return v0
.end method

.method public removeClip()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$7;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$7;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromStage()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v2, Lcom/adobe/air/AndroidStageText$3;

    invoke-direct {v2, p0, v0}, Lcom/adobe/air/AndroidStageText$3;-><init>(Lcom/adobe/air/AndroidStageText;Lcom/adobe/air/AndroidStageTextAsync;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->resetGlobalBounds()V

    return-void
.end method

.method public selectRange(II)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/air/AndroidStageText$34;-><init>(Lcom/adobe/air/AndroidStageText;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendDispatchChangeEvent(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 683
    :cond_0
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 684
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchChangeEvent(J)V

    goto :goto_0

    .line 686
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 687
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 688
    new-array v3, v2, [Ljava/lang/Class;

    .line 689
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 690
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "dispatchChangeEvent"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such method for change event: "

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

.method public sendDispatchCompleteEvent(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 699
    :cond_0
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchCompleteEvent(J)V

    goto :goto_0

    .line 705
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 706
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 707
    new-array v3, v2, [Ljava/lang/Class;

    .line 708
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 709
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "dispatchCompleteEvent"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 710
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such method for complete event: "

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

.method public sendDispatchFocusIn(JI)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 649
    :cond_0
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 650
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->dispatchFocusIn(JI)V

    goto :goto_0

    .line 652
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 653
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    .line 654
    new-array v3, v2, [Ljava/lang/Class;

    .line 655
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 656
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 657
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "dispatchFocusIn"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 660
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such method for focus in event: "

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

.method public sendDispatchFocusOut(JI)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 666
    :cond_0
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 667
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->dispatchFocusOut(JI)V

    goto :goto_0

    .line 669
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 670
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    .line 671
    new-array v3, v2, [Ljava/lang/Class;

    .line 672
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 673
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 674
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "dispatchFocusOut"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 675
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 677
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such method for focus out event: "

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

.method public sendHandleKeyEvent(JII)Z
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    .line 734
    :cond_0
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 735
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z

    move-result p1

    return p1

    .line 737
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x465

    .line 738
    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    .line 739
    new-array v4, v3, [Ljava/lang/Class;

    .line 740
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 741
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 742
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 743
    new-instance v5, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "handleKeyEvent"

    invoke-virtual {v8, v9, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-direct {v5, p0, v4, v3}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 744
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 746
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No such method for handle key event: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public sendInvokeSoftKeyboard(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-static {}, Lcom/adobe/air/Entrypoints;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 719
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    goto :goto_0

    .line 721
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x465

    .line 722
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 723
    new-array v3, v2, [Ljava/lang/Class;

    .line 724
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 725
    new-instance v4, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "invokeSoftKeyboard"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-direct {v4, p0, v3, v2}, Lcom/adobe/air/AndroidActivityWrapper$AsyncEntryDetails;-><init>(Lcom/adobe/air/Entrypoints$AsyncEntryHandler;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such method for invoke softkeyboard: "

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

.method public setAlign(I)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$26;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$26;-><init>(Lcom/adobe/air/AndroidStageText;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAutoCapitalize(I)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$18;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$18;-><init>(Lcom/adobe/air/AndroidStageText;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAutoCorrect(Z)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$19;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$19;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackground(Z)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$15;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$15;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundColor(IIII)V
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v7, Lcom/adobe/air/AndroidStageText$14;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/adobe/air/AndroidStageText$14;-><init>(Lcom/adobe/air/AndroidStageText;IIII)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$28;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$28;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBorder(Z)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$17;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$17;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBorderColor(IIII)V
    .locals 8

    .line 316
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v7, Lcom/adobe/air/AndroidStageText$16;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/adobe/air/AndroidStageText$16;-><init>(Lcom/adobe/air/AndroidStageText;IIII)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setClipBounds(DDDD)V
    .locals 13

    move-object v10, p0

    .line 171
    iget-object v11, v10, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v12, Lcom/adobe/air/AndroidStageText$6;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/adobe/air/AndroidStageText$6;-><init>(Lcom/adobe/air/AndroidStageText;DDDD)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setDisableInteraction(Z)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$12;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$12;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisplayAsPassword(Z)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$10;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$10;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEditable(Z)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$11;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$11;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$30;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$30;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFontSize(I)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$27;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$27;-><init>(Lcom/adobe/air/AndroidStageText;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInternalReference(J)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidStageTextAsync;->setInternalReference(J)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$29;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$29;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$9;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$9;-><init>(Lcom/adobe/air/AndroidStageText;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$24;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$24;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMaxChars(I)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$23;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$23;-><init>(Lcom/adobe/air/AndroidStageText;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreventDefault(Z)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$25;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$25;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRestrict(Ljava/lang/String;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$22;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$22;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setReturnKeyLabel(I)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$20;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$20;-><init>(Lcom/adobe/air/AndroidStageText;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$8;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$8;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextColor(IIII)V
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v7, Lcom/adobe/air/AndroidStageText$13;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/adobe/air/AndroidStageText$13;-><init>(Lcom/adobe/air/AndroidStageText;IIII)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$4;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$4;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTypeface()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_act:Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/AndroidStageText$31;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$31;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public wrapperInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Z
    .locals 7

    .line 615
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->_stageText:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 621
    :try_start_0
    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 622
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto/16 :goto_2

    .line 623
    :cond_1
    array-length v3, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    .line 637
    new-array v2, v6, [Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    const/4 p2, 0x4

    .line 634
    new-array p2, p2, [Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, p2, v1

    aget-object v3, v2, v6

    aput-object v3, p2, v6

    aget-object v3, v2, v5

    aput-object v3, p2, v5

    aget-object v2, v2, v4

    aput-object v2, p2, v4

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 631
    :pswitch_1
    new-array p2, v4, [Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, p2, v1

    aget-object v3, v2, v6

    aput-object v3, p2, v6

    aget-object v2, v2, v5

    aput-object v2, p2, v5

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 628
    :pswitch_2
    new-array p2, v5, [Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, p2, v1

    aget-object v2, v2, v6

    aput-object v2, p2, v6

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 625
    :pswitch_3
    new-array p2, v6, [Ljava/lang/Object;

    aget-object v2, v2, v1

    aput-object v2, p2, v1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    aput-object p2, v2, v1

    .line 637
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AdobeAIR"

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when invoking stagetext method asynchronously: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_2

    .line 643
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
