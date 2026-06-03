.class public Lcom/adobe/air/SystemCapabilities;
.super Ljava/lang/Object;
.source "SystemCapabilities.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SystemCapabilities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBitsPerPixel(Landroid/content/Context;)I
    .locals 1

    .line 124
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 126
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 127
    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result p0

    invoke-static {p0, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 128
    iget p0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    return p0
.end method

.method public static GetRealScreenHRes(Landroid/content/Context;)I
    .locals 3

    .line 44
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 53
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static GetRealScreenVRes(Landroid/content/Context;)I
    .locals 3

    .line 69
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 71
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 79
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static GetScreenDPI(Landroid/content/Context;)I
    .locals 3

    .line 104
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->shouldPreventBuildModelAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 106
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SCH-I800"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SPH-P100"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SC-01C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GT-P1000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GT-P1010"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GT-P1000R"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GT-P1000M"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SHW-M180W"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SHW-M180L"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SHW-M180K"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SHW-M180S"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SGH-I987"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SGH-t849"

    aput-object v2, v0, v1

    .line 109
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 111
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 p0, 0xa0

    return p0

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    .line 116
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 119
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public static GetScreenHRes(Landroid/content/Context;)I
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 37
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static GetScreenVRes(Landroid/content/Context;)I
    .locals 1

    .line 58
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 64
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static HasTrackBall(Landroid/content/Context;)Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 143
    iget p0, p0, Landroid/content/res/Configuration;->navigation:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 25
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    const-string v0, "window"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method
