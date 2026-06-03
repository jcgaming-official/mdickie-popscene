.class Lcom/adobe/air/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/OrientationManager$EOrientation;,
        Lcom/adobe/air/OrientationManager$EDefault;,
        Lcom/adobe/air/OrientationManager$EAspectRatio;
    }
.end annotation


# static fields
.field private static final AIR_NAMESPACE_VERSION_3_3:F = 3.3f

.field private static final AIR_NAMESPACE_VERSION_3_8:F = 3.8f

.field private static final LOG_TAG:Ljava/lang/String; = "OrientationManager"

.field private static sMgr:Lcom/adobe/air/OrientationManager;


# instance fields
.field public mAfterOrientation:I

.field private mAutoOrients:Z

.field public mBeforeOrientation:I

.field private mDeviceDefault:I

.field private mDeviceOrientation:I

.field public mDispatchOrientationChangePending:Z

.field private mFinalOrientation:I

.field private mFirstCreate:Z

.field private mHardKeyboardHidden:I

.field private mIgnoreOrients:Z

.field private mNamespaceVersion:F

.field private mOldDeviceOrientation:I

.field private mOrientation:I

.field private mOrientationEventListner:Landroid/view/OrientationEventListener;

.field private mOsDefaultOrientation:I

.field private mOsReversedOrientation:I

.field private mOsRotatedLeftOrientation:I

.field private mOsRotatedRightOrientation:I

.field private mRequestedAspectRatio:I

.field private mSetOrientation:Z

.field private mView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private m_activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    .line 47
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 49
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    .line 50
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    .line 51
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    .line 52
    sget-object v1, Lcom/adobe/air/OrientationManager$EDefault;->PORTRAIT:Lcom/adobe/air/OrientationManager$EDefault;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EDefault;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceDefault:I

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    .line 54
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 55
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mIgnoreOrients:Z

    const/4 v2, 0x2

    .line 56
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    .line 59
    iput-object v2, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 61
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 62
    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    const/16 v0, 0x8

    .line 63
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    const/16 v0, 0x9

    .line 64
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    .line 68
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adobe/air/OrientationManager;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return p0
.end method

.method static synthetic access$102(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    return p0
.end method

.method static synthetic access$300(Lcom/adobe/air/OrientationManager;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    return p0
.end method

.method static synthetic access$302(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/air/OrientationManager;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return p0
.end method

.method static synthetic access$402(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->isReOrientingAllowed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setSensorBasedOrientation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    return p0
.end method

.method static synthetic access$802(Lcom/adobe/air/OrientationManager;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/OrientationManager;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    return p0
.end method

.method private applyLastOrientation()V
    .locals 10

    .line 778
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    const v1, 0x40533333    # 3.3f

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 780
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto/16 :goto_2

    .line 783
    :cond_1
    :goto_0
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setOrientation(I)V

    goto/16 :goto_2

    .line 796
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    return-void

    .line 802
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    .line 804
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    .line 805
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    .line 808
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    if-eq v0, v1, :cond_7

    .line 811
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->inAsyncMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 813
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, v0, v3}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 817
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    goto :goto_2

    .line 821
    :cond_5
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 823
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 826
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v0

    iget-object v3, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 829
    new-instance v0, Lcom/adobe/air/WindowEventData;

    const/4 v5, 0x0

    const/4 v6, 0x3

    iget v7, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v8, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IIIZ)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    .line 831
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_2

    .line 835
    :cond_6
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    :cond_7
    :goto_2
    return-void
.end method

.method private getCurrentOrientation()I
    .locals 3

    .line 631
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 633
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    return v0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-nez v1, :cond_1

    .line 640
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 644
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 648
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 652
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getOrientationManager()Lcom/adobe/air/OrientationManager;
    .locals 1

    .line 83
    sget-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/adobe/air/OrientationManager;

    invoke-direct {v0}, Lcom/adobe/air/OrientationManager;-><init>()V

    sput-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    return-object v0
.end method

.method private isReOrientingAllowed()Z
    .locals 4

    .line 97
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const/4 v1, 0x1

    const v2, 0x40533333    # 3.3f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 99
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v0, v1, :cond_2

    .line 101
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 103
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    .line 106
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v2, v3, :cond_0

    .line 108
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    .line 109
    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 115
    :cond_0
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    .line 116
    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private setDeviceDefault()V
    .locals 6

    .line 663
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 665
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 666
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const/16 v2, 0x9

    const/16 v5, 0x8

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 671
    :cond_4
    iput v4, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 672
    iput v3, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_5

    .line 675
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 676
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_3

    .line 680
    :cond_5
    iput v5, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 681
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_3

    .line 686
    :cond_6
    iput v3, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 687
    iput v4, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_7

    .line 690
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 691
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_3

    .line 695
    :cond_7
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 696
    iput v5, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    :goto_3
    return-void
.end method

.method private setOrientationParamsFromMetaData()V
    .locals 6

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 707
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 713
    :cond_0
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->shouldDisableSensorAccess()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 714
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mIgnoreOrients:Z

    return-void

    :cond_1
    const-string v1, "autoOrients"

    .line 718
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 720
    instance-of v3, v1, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 722
    check-cast v1, Ljava/lang/String;

    const-string v3, "ignore"

    .line 723
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mIgnoreOrients:Z

    const-string v3, "true"

    .line 724
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 726
    :cond_2
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 728
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string v3, "aspectRatio"

    .line 730
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "namespaceVersion"

    .line 737
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    if-eqz v3, :cond_5

    const-string v0, "portrait"

    .line 743
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 745
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    goto :goto_1

    :cond_4
    const-string v0, "landscape"

    .line 747
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 749
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 755
    invoke-virtual {p0, v2}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto :goto_2

    .line 759
    :cond_6
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v1, 0x40733333    # 3.8f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    if-eqz v3, :cond_7

    const-string v0, "any"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 761
    :cond_7
    invoke-virtual {p0, v4}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto :goto_2

    .line 763
    :cond_8
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    if-nez v3, :cond_9

    .line 765
    invoke-virtual {p0, v4}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    :goto_2
    return-void
.end method

.method private setSensorBasedOrientation()Z
    .locals 5

    .line 145
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 147
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v3, v2, :cond_8

    .line 151
    iget-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    const v4, 0x40533333    # 3.3f

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 152
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    :cond_1
    if-eqz v0, :cond_7

    .line 154
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_7

    .line 161
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v3, :cond_3

    .line 163
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 165
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 168
    :cond_2
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_8

    .line 170
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 177
    :cond_3
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    :goto_1
    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    goto :goto_1

    .line 180
    :goto_2
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    if-ne v1, v0, :cond_5

    .line 182
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 186
    :cond_5
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v2, :cond_6

    .line 188
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    return v2
.end method


# virtual methods
.method public enableEventListener(Z)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public getAutoOrients()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 2

    .line 421
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 423
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v1, :cond_0

    .line 425
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    return v0

    .line 429
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    return v0

    .line 434
    :cond_1
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 413
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return v0
.end method

.method public getSupportedOrientations()[I
    .locals 5

    .line 600
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-gt v0, v4, :cond_1

    .line 602
    new-array v0, v1, [I

    .line 604
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v3, :cond_0

    .line 606
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v2

    .line 607
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    .line 611
    :cond_0
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v2

    .line 612
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 617
    new-array v0, v0, [I

    .line 618
    sget-object v4, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v4}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v4

    aput v4, v0, v2

    .line 619
    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    aput v2, v0, v3

    .line 620
    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 621
    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-object v0
.end method

.method public native nativeOrientationChanged(II)V
.end method

.method public native nativeOrientationChanging(II)Z
.end method

.method public onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 2

    .line 213
    iput-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    .line 214
    iput-object p2, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 217
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    .line 220
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setDeviceDefault()V

    .line 223
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setOrientationParamsFromMetaData()V

    .line 226
    :cond_0
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mIgnoreOrients:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/adobe/air/OrientationManager$1;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/adobe/air/OrientationManager$1;-><init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V

    :goto_0
    iput-object p1, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    .line 317
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isScreenOn()Z

    move-result v0

    if-ne v0, p2, :cond_3

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isScreenLocked()Z

    move-result p1

    if-nez p1, :cond_3

    .line 321
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    if-nez p1, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->applyLastOrientation()V

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    :cond_3
    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    return-void
.end method

.method public onActivityDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->enableEventListener(Z)V

    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->enableEventListener(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    .line 360
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    .line 361
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    .line 368
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 370
    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    .line 371
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne p1, v3, :cond_1

    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-ne p1, v3, :cond_1

    .line 373
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 375
    :cond_0
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 379
    :cond_1
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    if-eq p1, v0, :cond_4

    .line 384
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    if-eq p1, v0, :cond_2

    return-void

    .line 388
    :cond_2
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    .line 390
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 392
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 395
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result p1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 398
    new-instance p1, Lcom/adobe/air/WindowEventData;

    const/4 v5, 0x0

    const/4 v6, 0x3

    iget v7, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v8, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IIIZ)V

    const/4 v0, 0x0

    invoke-static {v2, p1, v0}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    .line 399
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_0

    .line 403
    :cond_3
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 533
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v1, 0x40533333    # 3.3f

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 534
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 536
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 538
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 539
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    goto :goto_0

    .line 541
    :cond_1
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 543
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 544
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 549
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    .line 554
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne p1, v2, :cond_3

    .line 556
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 561
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    :cond_4
    return-void
.end method

.method public setAutoOrients(Z)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 573
    :cond_0
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    .line 575
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 577
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v0, 0x40533333    # 3.3f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 579
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setNearestOrientation(I)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 505
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 507
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 509
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 511
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 513
    :cond_1
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 515
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 517
    :cond_2
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 519
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 7

    .line 441
    iget v3, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    .line 445
    invoke-virtual {p0, p1}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    .line 446
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 447
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    goto :goto_1

    .line 457
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 459
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    .line 461
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne p1, v1, :cond_1

    .line 463
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 469
    :goto_0
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    goto :goto_1

    .line 472
    :cond_2
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 474
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne p1, v1, :cond_4

    .line 476
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 477
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    goto :goto_1

    .line 480
    :cond_3
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 482
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-nez p1, :cond_4

    .line 484
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 485
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 490
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v4

    .line 491
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v0, 0x40733333    # 3.8f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    if-eq v4, v3, :cond_5

    .line 494
    new-instance p1, Lcom/adobe/air/WindowEventData;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/WindowEventData;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;IIIZ)V

    const/4 v0, 0x0

    invoke-static {v6, p1, v0}, Lcom/adobe/air/Entrypoints;->registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z

    :cond_5
    return-void
.end method
