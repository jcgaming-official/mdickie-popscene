.class public Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;
.super Landroid/widget/EditText;
.source "AndroidStageTextAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageTextAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidStageTextEditText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;
    }
.end annotation


# instance fields
.field private mLastFocusDirection:I

.field private m_focusedChildView:Landroid/view/View;

.field private m_hasFocus:Z

.field private m_inRequestChildFocus:Z

.field final synthetic this$0:Lcom/adobe/air/AndroidStageTextAsync;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 232
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    const/4 p2, 0x0

    .line 227
    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 228
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_hasFocus:Z

    .line 229
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 235
    invoke-virtual {p0, p2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setCompoundDrawablePadding(I)V

    .line 237
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 243
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    const/4 p2, 0x0

    .line 227
    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 228
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_hasFocus:Z

    .line 229
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->mLastFocusDirection:I

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 248
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    const/4 p2, 0x0

    .line 227
    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 228
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_hasFocus:Z

    .line 229
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->mLastFocusDirection:I

    return-void
.end method

.method private dispatchFocusEvent(ZI)V
    .locals 6

    .line 344
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_hasFocus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_hasFocus:Z

    .line 349
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 351
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-void

    .line 358
    :cond_1
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 359
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object v2

    iget-boolean v3, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_hasFocus:Z

    invoke-virtual {v1, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 365
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p1

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lcom/adobe/air/AndroidStageText;->sendDispatchFocusIn(JI)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->m_hasFocus:Z

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->requestFocus()Z

    .line 282
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$702(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 446
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$802(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 448
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 258
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$400(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 259
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$400(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 260
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v3}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v4}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v5}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 262
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p2, :cond_0

    .line 380
    iget p2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->mLastFocusDirection:I

    :cond_0
    const/4 p3, 0x0

    .line 382
    iput p3, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->dispatchFocusEvent(ZI)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$1100(Lcom/adobe/air/AndroidStageTextAsync;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 500
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    .line 540
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$1100(Lcom/adobe/air/AndroidStageTextAsync;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/adobe/air/AndroidStageText;->sendHandleKeyEvent(JII)Z

    .line 526
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 529
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$1102(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 329
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 331
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$000(Lcom/adobe/air/AndroidStageTextAsync;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 333
    invoke-static {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$002(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 334
    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p1

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->sendDispatchCompleteEvent(J)V

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$500(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    move-result-object p1

    new-instance p2, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;

    const/16 v2, 0xa

    const/16 v3, 0x4b

    iget-object p3, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p3}, Lcom/adobe/air/AndroidStageTextAsync;->access$500(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    move-result-object v4

    iget-object p3, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p3}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v5

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText$DelayedTransparentRegionUpdate;-><init>(Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;IILcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;Lcom/adobe/air/AIRWindowSurfaceView;)V

    const-wide/16 p3, 0x4b

    invoke-virtual {p1, p2, p3, p4}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 2

    .line 468
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 469
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$802(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 471
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$900(Lcom/adobe/air/AndroidStageTextAsync;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$1000(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 474
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p1

    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/adobe/air/AndroidStageText;->sendInvokeSoftKeyboard(J)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 391
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    .line 392
    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object p2

    invoke-static {p1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/adobe/air/AndroidStageText;->sendDispatchChangeEvent(J)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$902(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 457
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    .line 459
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$902(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 460
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$702(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 405
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 408
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const v5, 0xff00

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    .line 427
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$700(Lcom/adobe/air/AndroidStageTextAsync;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v2}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adobe/air/AndroidStageText;->sendInvokeSoftKeyboard(J)V

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1, v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$702(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 438
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$800(Lcom/adobe/air/AndroidStageTextAsync;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v2}, Lcom/adobe/air/AndroidStageTextAsync;->access$1000(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 551
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageTextAsync;->access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$100(Lcom/adobe/air/AndroidStageTextAsync;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->sendInvokeSoftKeyboard(J)V

    .line 552
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageTextAsync;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->access$802(Lcom/adobe/air/AndroidStageTextAsync;Z)Z

    .line 554
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
