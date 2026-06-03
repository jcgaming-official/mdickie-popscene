.class public Lcom/adobe/air/AndroidScreenMode;
.super Ljava/lang/Object;
.source "AndroidScreenMode.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidScreenMode"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayById(I)Landroid/view/Display;
    .locals 2

    .line 26
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 29
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getModeHeight(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p0, Landroid/view/Display$Mode;

    .line 34
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    return p0
.end method

.method public static getModeWidth(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p0, Landroid/view/Display$Mode;

    .line 39
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    return p0
.end method

.method public static getRefreshRate(Ljava/lang/Object;)F
    .locals 0

    .line 44
    check-cast p0, Landroid/view/Display$Mode;

    .line 45
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method public static getScreenModes(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/adobe/air/AndroidScreenMode;->getDisplayById(I)Landroid/view/Display;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method
