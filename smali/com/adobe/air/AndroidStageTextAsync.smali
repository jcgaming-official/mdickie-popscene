.class public Lcom/adobe/air/AndroidStageTextAsync;
.super Ljava/lang/Object;
.source "AndroidStageTextAsync.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;,
        Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;,
        Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;,
        Lcom/adobe/air/AndroidStageTextAsync$RestrictFilter;
    }
.end annotation


# static fields
.field private static final ALIGN_Center:I = 0x2

.field private static final ALIGN_End:I = 0x5

.field private static final ALIGN_Justify:I = 0x3

.field private static final ALIGN_Left:I = 0x0

.field private static final ALIGN_Right:I = 0x1

.field private static final ALIGN_Start:I = 0x4

.field private static final AUTO_CAP_All:I = 0x3

.field private static final AUTO_CAP_None:I = 0x0

.field private static final AUTO_CAP_Sentence:I = 0x2

.field private static final AUTO_CAP_Word:I = 0x1

.field private static final FOCUS_DOWN:I = 0x3

.field private static final FOCUS_NONE:I = 0x1

.field private static final FOCUS_UP:I = 0x2

.field private static FontMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEYBOARDTYPE_Contact:I = 0x4

.field private static final KEYBOARDTYPE_DecimalPad:I = 0x7

.field private static final KEYBOARDTYPE_Default:I = 0x0

.field private static final KEYBOARDTYPE_Email:I = 0x5

.field private static final KEYBOARDTYPE_Number:I = 0x3

.field private static final KEYBOARDTYPE_Phone:I = 0x6

.field private static final KEYBOARDTYPE_Punctuation:I = 0x1

.field private static final KEYBOARDTYPE_Url:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidStageText"

.field private static MapCreate:Z = false

.field private static final RETURN_KEY_Default:I = 0x0

.field private static final RETURN_KEY_Done:I = 0x1

.field private static final RETURN_KEY_Go:I = 0x2

.field private static final RETURN_KEY_Next:I = 0x3

.field private static final RETURN_KEY_Search:I = 0x4


# instance fields
.field private enterKeyDispatched:Z

.field private mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mAlign:I

.field private mAutoCapitalize:I

.field private mAutoCorrect:Z

.field private mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

.field private mBackgroundColor:I

.field private mBold:Z

.field private mBorderColor:I

.field private mBounds:Landroid/graphics/Rect;

.field private mClip:Landroid/view/ViewGroup;

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisableInteraction:Z

.field private mDisplayAsPassword:Z

.field private mEditable:Z

.field private mFont:Ljava/lang/String;

.field private mFontSize:I

.field private mGlobalBounds:Landroid/graphics/Rect;

.field private mInContentMenu:Z

.field private mInternalReference:J

.field private mItalic:Z

.field private mKeyboardType:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLocale:Ljava/lang/String;

.field private mMaxChars:I

.field private mMenuInvoked:Z

.field private mMultiline:Z

.field private mNotifyLayoutComplete:Z

.field private mOwner:Lcom/adobe/air/AndroidStageText;

.field private mPreventDefault:Z

.field private mRestrict:Ljava/lang/String;

.field private mReturnKeyLabel:I

.field private mSavedKeyListener:Landroid/text/method/KeyListener;

.field private mScaleFactor:D

.field private mSelectionChanged:Z

.field private mTextColor:I

.field private mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

.field private mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

.field private mViewBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/air/AndroidStageTextAsync;->FontMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/adobe/air/AndroidStageTextAsync;->MapCreate:Z

    return-void
.end method

.method public constructor <init>(ZLcom/adobe/air/AndroidStageText;)V
    .locals 8

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->enterKeyDispatched:Z

    const/4 v1, 0x0

    .line 1764
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClip:Landroid/view/ViewGroup;

    .line 1766
    iput v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mKeyboardType:I

    .line 1767
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContentType:Ljava/lang/String;

    .line 1768
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisplayAsPassword:Z

    .line 1769
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMultiline:Z

    .line 1770
    iput v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCapitalize:I

    .line 1771
    iput v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mReturnKeyLabel:I

    .line 1772
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCorrect:Z

    .line 1773
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBold:Z

    .line 1774
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mItalic:Z

    const/4 v2, 0x1

    .line 1775
    iput-boolean v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    .line 1776
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisableInteraction:Z

    const/4 v3, 0x4

    .line 1779
    iput v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAlign:I

    const/high16 v3, -0x1000000

    .line 1780
    iput v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextColor:I

    const/4 v4, -0x1

    .line 1781
    iput v4, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBackgroundColor:I

    .line 1782
    iput v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBorderColor:I

    .line 1784
    iput v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMaxChars:I

    .line 1785
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mRestrict:Ljava/lang/String;

    .line 1786
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLocale:Ljava/lang/String;

    .line 1787
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mPreventDefault:Z

    .line 1788
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    .line 1789
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mViewBounds:Landroid/graphics/Rect;

    .line 1790
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClipBounds:Landroid/graphics/Rect;

    .line 1791
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 1792
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mSavedKeyListener:Landroid/text/method/KeyListener;

    .line 1793
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMenuInvoked:Z

    .line 1794
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mSelectionChanged:Z

    .line 1795
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInContentMenu:Z

    .line 1796
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mNotifyLayoutComplete:Z

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1797
    iput-wide v5, p0, Lcom/adobe/air/AndroidStageTextAsync;->mScaleFactor:D

    .line 561
    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mOwner:Lcom/adobe/air/AndroidStageText;

    .line 563
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMultiline:Z

    .line 564
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisplayAsPassword:Z

    const-wide/16 v5, 0x0

    .line 565
    iput-wide v5, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInternalReference:J

    .line 566
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    .line 567
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    return-void

    .line 568
    :cond_0
    new-instance p2, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v3}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;-><init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    .line 569
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {p2, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setFillViewport(Z)V

    .line 574
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt p2, v3, :cond_1

    .line 576
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {p2, v2, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setLayerType(ILandroid/graphics/Paint;)V

    .line 578
    :cond_1
    new-instance p2, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v3}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;-><init>(Lcom/adobe/air/AndroidStageTextAsync;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    .line 579
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/high16 v3, 0x12000000

    invoke-virtual {p2, v3}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setImeOptions(I)V

    .line 580
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mSavedKeyListener:Landroid/text/method/KeyListener;

    const/16 p2, 0xc

    .line 581
    invoke-virtual {p0, p2}, Lcom/adobe/air/AndroidStageTextAsync;->setFontSize(I)V

    .line 582
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->setInputType()V

    .line 583
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3, v5}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_2

    .line 586
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setSingleLine(Z)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 591
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setHorizontallyScrolling(Z)V

    .line 593
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setGravity(I)V

    .line 597
    sget-boolean p1, Lcom/adobe/air/AndroidStageTextAsync;->MapCreate:Z

    if-nez p1, :cond_3

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->embeddedFonts()Z

    move-result p1

    if-nez p1, :cond_3

    .line 598
    sput-boolean v2, Lcom/adobe/air/AndroidStageTextAsync;->MapCreate:Z

    .line 601
    :cond_3
    sget-boolean p1, Lcom/adobe/air/AndroidStageTextAsync;->MapCreate:Z

    if-nez p1, :cond_6

    .line 602
    sput-boolean v2, Lcom/adobe/air/AndroidStageTextAsync;->MapCreate:Z

    .line 604
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "customEmbeddedFonts"

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 605
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    .line 607
    array-length p2, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_6

    aget-object v3, p1, v1

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customEmbeddedFonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 611
    :try_start_1
    iget-object v5, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x2e

    .line 615
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ttf"

    .line 616
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "otf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 619
    :cond_4
    iget-object v6, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 621
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 622
    sget-object v5, Lcom/adobe/air/AndroidStageTextAsync;->FontMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 626
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidStageTextAsync;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mNotifyLayoutComplete:Z

    return p0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidStageTextAsync;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mNotifyLayoutComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidStageTextAsync;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInternalReference:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/adobe/air/AndroidStageTextAsync;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->enterKeyDispatched:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/adobe/air/AndroidStageTextAsync;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->enterKeyDispatched:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageText;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mOwner:Lcom/adobe/air/AndroidStageText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidStageTextAsync;)Landroid/graphics/Rect;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mViewBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidStageTextAsync;)Lcom/adobe/air/AIRWindowSurfaceView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidStageTextAsync;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMenuInvoked:Z

    return p0
.end method

.method static synthetic access$702(Lcom/adobe/air/AndroidStageTextAsync;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMenuInvoked:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidStageTextAsync;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mSelectionChanged:Z

    return p0
.end method

.method static synthetic access$802(Lcom/adobe/air/AndroidStageTextAsync;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mSelectionChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidStageTextAsync;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInContentMenu:Z

    return p0
.end method

.method static synthetic access$902(Lcom/adobe/air/AndroidStageTextAsync;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInContentMenu:Z

    return p1
.end method

.method private applyFilters()V
    .locals 5

    .line 1468
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMaxChars:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1469
    :goto_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mRestrict:Ljava/lang/String;

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1471
    :cond_1
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 1475
    iget v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMaxChars:I

    if-eqz v3, :cond_2

    .line 1477
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMaxChars:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v1

    const/4 v1, 0x1

    .line 1480
    :cond_2
    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mRestrict:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1482
    new-instance v2, Lcom/adobe/air/AndroidStageTextAsync$RestrictFilter;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mRestrict:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/adobe/air/AndroidStageTextAsync$RestrictFilter;-><init>(Lcom/adobe/air/AndroidStageTextAsync;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1485
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private getShapeForBounds(Landroid/graphics/Rect;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 2

    .line 1160
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 1161
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    return-object v0
.end method

.method private refreshGlobalBounds(Z)V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    if-nez v0, :cond_0

    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    new-instance v1, Lcom/adobe/air/AndroidStageTextAsync$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageTextAsync$2;-><init>(Lcom/adobe/air/AndroidStageTextAsync;Z)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setInputType()V
    .locals 3

    .line 1022
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisplayAsPassword:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1024
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mKeyboardType:I

    if-ne v0, v1, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    const/16 v1, 0x81

    goto :goto_0

    .line 1035
    :cond_1
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mKeyboardType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x2002

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x21

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x11

    :goto_0
    :pswitch_5
    and-int/lit8 v0, v1, 0xf

    if-ne v0, v2, :cond_3

    .line 1059
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCorrect:Z

    if-eqz v0, :cond_2

    const v0, 0x8000

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_2
    const/high16 v0, 0x80000

    or-int/2addr v0, v1

    goto :goto_1

    .line 1067
    :goto_2
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCapitalize:I

    if-eqz v0, :cond_3

    .line 1069
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCapitalize:I

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_6
    or-int/lit16 v1, v1, 0x1000

    goto :goto_3

    :pswitch_7
    or-int/lit16 v1, v1, 0x4000

    goto :goto_3

    :pswitch_8
    or-int/lit16 v1, v1, 0x2000

    .line 1082
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMultiline:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x20000

    or-int/2addr v1, v0

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setRawInputType(I)V

    .line 1085
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync;->removeFromStage()V

    .line 679
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 681
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 682
    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    const/4 v0, 0x1

    .line 683
    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLayout:Landroid/widget/RelativeLayout;

    .line 684
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    new-instance v0, Lcom/adobe/air/AndroidStageTextAsync$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidStageTextAsync$1;-><init>(Lcom/adobe/air/AndroidStageTextAsync;)V

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public adjustViewBounds(DDDDD)V
    .locals 3

    .line 874
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double/2addr p1, p5

    double-to-int p1, p1

    add-double/2addr p3, p7

    double-to-int p2, p3

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mViewBounds:Landroid/graphics/Rect;

    .line 875
    iget-wide p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mScaleFactor:D

    cmpl-double p3, p9, p1

    if-eqz p3, :cond_0

    .line 877
    iput-wide p9, p0, Lcom/adobe/air/AndroidStageTextAsync;->mScaleFactor:D

    .line 878
    iget p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mFontSize:I

    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidStageTextAsync;->setFontSize(I)V

    .line 881
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mViewBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    .line 882
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClip:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 884
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 886
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 889
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidStageTextAsync;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public assignFocus()V
    .locals 3

    .line 1648
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->requestFocus()Z

    .line 1650
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mPreventDefault:Z

    if-nez v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mOwner:Lcom/adobe/air/AndroidStageText;

    iget-wide v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInternalReference:J

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->sendInvokeSoftKeyboard(J)V

    return-void
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-object v0

    .line 1721
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1722
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1723
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1726
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1727
    iget-wide v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mScaleFactor:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    .line 1728
    iget-wide v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mScaleFactor:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    double-to-float v1, v1

    iget-wide v5, p0, Lcom/adobe/air/AndroidStageTextAsync;->mScaleFactor:D

    div-double/2addr v3, v5

    double-to-float v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1731
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->isHorizontalScrollBarEnabled()Z

    move-result v1

    .line 1732
    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->isVerticalScrollBarEnabled()Z

    move-result v2

    .line 1735
    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1736
    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v3, v4}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    .line 1741
    :try_start_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v3, p2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 1747
    :goto_0
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {p2, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1748
    iget-object p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {p2, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public clearFocus()V
    .locals 3

    .line 1663
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->clearFocus()V

    .line 1666
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 1677
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMenuInvoked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisableInteraction:Z

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public clearRestrict()V
    .locals 1

    const/4 v0, 0x0

    .line 1496
    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mRestrict:Ljava/lang/String;

    .line 1497
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->applyFilters()V

    return-void
.end method

.method public destroyInternals()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 665
    iput-wide v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInternalReference:J

    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClipBounds:Landroid/graphics/Rect;

    .line 667
    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    .line 668
    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mOwner:Lcom/adobe/air/AndroidStageText;

    return-void
.end method

.method public getAlign()I
    .locals 1

    .line 1543
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAlign:I

    return v0
.end method

.method public getAutoCapitalize()I
    .locals 1

    .line 1225
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCapitalize:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBkgColor:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mBorderColor:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .line 1582
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mFontSize:I

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    .line 948
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mKeyboardType:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1522
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxChars()I
    .locals 1

    .line 1508
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMaxChars:I

    return v0
.end method

.method public getPreventDefault()Z
    .locals 1

    .line 1533
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mPreventDefault:Z

    return v0
.end method

.method public getRestrict()Ljava/lang/String;
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mRestrict:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnKeyLabel()I
    .locals 1

    .line 1242
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mReturnKeyLabel:I

    return v0
.end method

.method public getSelectionActiveIndex()I
    .locals 1

    .line 1707
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionAnchorIndex()I
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1154
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextColor:I

    return v0
.end method

.method public isContextValid()Z
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public removeClip()V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 909
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 910
    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClipBounds:Landroid/graphics/Rect;

    .line 911
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    const/4 v0, 0x1

    .line 912
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageTextAsync;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public removeFromStage()V
    .locals 6

    .line 738
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 741
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLayout:Landroid/widget/RelativeLayout;

    .line 745
    :cond_0
    iget-wide v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInternalReference:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->didRemoveOverlay()V

    .line 753
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 755
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mOwner:Lcom/adobe/air/AndroidStageText;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    .line 757
    :cond_2
    iput-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 835
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageTextAsync;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public selectRange(II)V
    .locals 2

    .line 1685
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    if-le p2, v0, :cond_3

    move p2, v0

    .line 1694
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setSelection(II)V

    .line 1695
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setAlign(I)V
    .locals 1

    .line 1549
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAlign:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1560
    :pswitch_1
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1557
    :pswitch_2
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1553
    :pswitch_3
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setGravity(I)V

    .line 1565
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoCapitalize(I)V
    .locals 1

    .line 1215
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCapitalize:I

    if-eq v0, p1, :cond_0

    .line 1217
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCapitalize:I

    .line 1218
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->setInputType()V

    :cond_0
    return-void
.end method

.method public setAutoCorrect(Z)V
    .locals 1

    .line 1231
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCorrect:Z

    if-eq v0, p1, :cond_0

    .line 1233
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAutoCorrect:Z

    .line 1234
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->setInputType()V

    :cond_0
    return-void
.end method

.method public setBackground(Z)V
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBkg:Z

    if-eq v0, p1, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBkg:Z

    .line 1184
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(IIII)V
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->setBkgColor(I)V

    .line 1169
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setBold(Z)V
    .locals 0

    .line 1589
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBold:Z

    .line 1590
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync;->updateTypeface()V

    return-void
.end method

.method public setBorder(Z)V
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBorder:Z

    if-eq v0, p1, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 1208
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderColor(IIII)V
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBBDrawable:Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync$BackgroundBorderDrawable;->setBorderColor(I)V

    .line 1192
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setClipBounds(DDDD)V
    .locals 3

    .line 898
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double/2addr p1, p5

    double-to-int p1, p1

    add-double/2addr p3, p7

    double-to-int p2, p3

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mClipBounds:Landroid/graphics/Rect;

    .line 899
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mViewBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    .line 900
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    const/4 p1, 0x1

    .line 901
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidStageTextAsync;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 6

    .line 953
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContentType:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/4 v3, -0x1

    .line 955
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "password"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_2
    const-string v4, "phone_number"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v4, "email_address"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "otp_sms"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v4, "address"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string v4, "date_of_birth"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x5

    :cond_1
    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v3, "AdobeAIR"

    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown StageText.contentType value -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const-string v0, "smsOTPCode"

    goto :goto_1

    :pswitch_1
    const-string v0, "birthDateFull"

    goto :goto_1

    :pswitch_2
    const-string v0, "postalAddress"

    goto :goto_1

    :pswitch_3
    const-string v0, "phoneNumber"

    goto :goto_1

    :pswitch_4
    const-string v0, "emailAddress"

    goto :goto_1

    :pswitch_5
    const-string v0, "password"

    goto :goto_1

    :pswitch_6
    const-string v0, "personName"

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 983
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    .line 984
    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setAutofillHints([Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setImportantForAutofill(I)V

    goto :goto_2

    :cond_3
    const-string v0, "AdobeAIR"

    const-string v1, "Could not set StageText.contentType, Android API version is less than 26"

    .line 986
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :goto_2
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mContentType:Ljava/lang/String;

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46711238 -> :sswitch_6
        -0x4468640c -> :sswitch_5
        -0x43e2f1bb -> :sswitch_4
        -0x2dddcdaf -> :sswitch_3
        -0x247fbcc6 -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x4889ba9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisableInteraction(Z)V
    .locals 4

    .line 1114
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisableInteraction:Z

    .line 1118
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1123
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v2, v3}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1124
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1125
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_1

    .line 1129
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-boolean v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eqz v3, :cond_1

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1130
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1131
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :cond_2
    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1135
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eqz p1, :cond_3

    .line 1136
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->setInputType()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setDisplayAsPassword(Z)V
    .locals 1

    .line 1000
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisplayAsPassword:Z

    if-eqz p1, :cond_0

    .line 1003
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 1005
    :cond_0
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMultiline:Z

    if-nez p1, :cond_1

    .line 1007
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 1011
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1015
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->setInputType()V

    return-void
.end method

.method public setEditable(Z)V
    .locals 3

    .line 1091
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eq p1, v0, :cond_2

    .line 1093
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    .line 1094
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisableInteraction:Z

    if-nez p1, :cond_2

    .line 1098
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    .line 1099
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1100
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1101
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1103
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mSavedKeyListener:Landroid/text/method/KeyListener;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1104
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eqz p1, :cond_2

    .line 1105
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->setInputType()V

    :cond_2
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 1604
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mFont:Ljava/lang/String;

    .line 1606
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync;->updateTypeface()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 4

    .line 1572
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mFontSize:I

    int-to-double v0, p1

    .line 1573
    iget-wide v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mScaleFactor:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    .line 1575
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTextSize(IF)V

    .line 1576
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setInternalReference(J)V
    .locals 0

    .line 650
    iput-wide p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mInternalReference:J

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    .line 1597
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mItalic:Z

    .line 1598
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageTextAsync;->updateTypeface()V

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0

    .line 942
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mKeyboardType:I

    .line 943
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->setInputType()V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 1528
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setMaxChars(I)V
    .locals 1

    .line 1513
    iget v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMaxChars:I

    if-eq p1, v0, :cond_0

    .line 1515
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mMaxChars:I

    .line 1516
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->applyFilters()V

    :cond_0
    return-void
.end method

.method public setPreventDefault(Z)V
    .locals 0

    .line 1538
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mPreventDefault:Z

    return-void
.end method

.method public setRestrict(Ljava/lang/String;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mRestrict:Ljava/lang/String;

    .line 1503
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageTextAsync;->applyFilters()V

    return-void
.end method

.method public setReturnKeyLabel(I)V
    .locals 1

    .line 1252
    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mReturnKeyLabel:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    :goto_0
    :pswitch_4
    const/high16 p1, 0x12000000

    or-int/2addr p1, v0

    .line 1272
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setImeOptions(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 921
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 922
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mEditable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mDisableInteraction:Z

    if-nez v2, :cond_0

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 923
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setTextColor(IIII)V
    .locals 0

    .line 1146
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextColor:I

    .line 1147
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    iget p2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextColor:I

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTextColor(I)V

    .line 1149
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 764
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 767
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextImpl;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 769
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    :cond_1
    return-void
.end method

.method public updateTypeface()V
    .locals 3

    .line 1613
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBold:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1614
    :goto_0
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mItalic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 1616
    :cond_1
    sget-object v1, Lcom/adobe/air/AndroidStageTextAsync;->FontMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mFont:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 1618
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1621
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mFont:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1624
    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1634
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1631
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1641
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mTextView:Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync$AndroidStageTextEditText;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 6

    .line 777
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 779
    iget-object v0, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 782
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 784
    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 789
    iget-object v2, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 790
    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-wide/16 v3, 0x0

    if-ne v2, p1, :cond_0

    return-wide v3

    .line 799
    :cond_0
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v5

    if-gtz p1, :cond_1

    return-wide v3

    :cond_1
    if-gt p1, v2, :cond_2

    goto :goto_0

    .line 820
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageTextAsync;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    .line 821
    iget-object p1, p0, Lcom/adobe/air/AndroidStageTextAsync;->mGlobalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    move p1, v2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 827
    :goto_0
    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->refreshGlobalBounds(Z)V

    int-to-long v0, p1

    return-wide v0
.end method
