.class public Lcom/distriqt/core/utils/FREUtils;
.super Ljava/lang/Object;
.source "FREUtils.java"


# static fields
.field public static DEBUG_ENABLED:Ljava/lang/Boolean; = null

.field public static DEBUG_OUTPUTS_ENABLED:Ljava/lang/Boolean; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static ID:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FREUtils"

.field public static context:Lcom/adobe/fre/FREContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/distriqt/core/utils/FREUtils;->DEBUG_ENABLED:Ljava/lang/Boolean;

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/distriqt/core/utils/FREUtils;->DEBUG_OUTPUTS_ENABLED:Ljava/lang/Boolean;

    const-string v0, "com.distriqt.EXTENSION"

    .line 42
    sput-object v0, Lcom/distriqt/core/utils/FREUtils;->ID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetObjectAsArrayOfBooleans(Lcom/adobe/fre/FREArray;)[Z
    .locals 6

    const/4 v0, 0x0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v1

    long-to-int v1, v1

    .line 157
    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    int-to-long v4, v3

    .line 161
    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v4

    aput-boolean v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 170
    :catch_0
    new-array p0, v0, [Z

    return-object p0
.end method

.method public static GetObjectAsArrayOfDoubles(Lcom/adobe/fre/FREArray;)[D
    .locals 6

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v1

    long-to-int v1, v1

    .line 135
    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    int-to-long v4, v3

    .line 139
    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 148
    :catch_0
    new-array p0, v0, [D

    return-object p0
.end method

.method public static GetObjectAsArrayOfNumbers(Lcom/adobe/fre/FREArray;)[I
    .locals 6

    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v1

    long-to-int v1, v1

    .line 113
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    int-to-long v4, v3

    .line 117
    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 126
    :catch_0
    new-array p0, v0, [I

    return-object p0
.end method

.method public static GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v1

    long-to-int v1, v1

    .line 91
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    int-to-long v4, v3

    .line 95
    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 104
    :catch_0
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public static addViewToAIR(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0, p0, p1}, Lcom/distriqt/core/utils/FREUtils;->addViewToAIR(Lcom/adobe/fre/FREContext;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static addViewToAIR(Lcom/adobe/fre/FREContext;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 255
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static addViewToAIR(Lcom/distriqt/core/utils/IExtensionContext;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 263
    invoke-interface {p0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    .line 198
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 200
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 204
    :cond_0
    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/distriqt/core/utils/FREUtils;->findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAIRWindowSurfaceView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0}, Lcom/distriqt/core/utils/FREUtils;->getAIRWindowSurfaceView(Lcom/adobe/fre/FREContext;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getAIRWindowSurfaceView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x1020002

    .line 236
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const-string v0, "com.adobe.air.AIRWindowSurfaceView"

    .line 237
    invoke-static {p0, v0}, Lcom/distriqt/core/utils/FREUtils;->findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAIRWindowSurfaceView(Lcom/adobe/fre/FREContext;)Landroid/view/View;
    .locals 0

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/distriqt/core/utils/FREUtils;->getAIRWindowSurfaceView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceDefaultOrientation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0}, Lcom/distriqt/core/utils/FREUtils;->getDeviceDefaultOrientation(Lcom/adobe/fre/FREContext;)I

    move-result v0

    return v0
.end method

.method public static getDeviceDefaultOrientation(Lcom/adobe/fre/FREContext;)I
    .locals 4

    if-eqz p0, :cond_5

    .line 290
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 291
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 293
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 295
    :cond_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_4

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_2
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V
    .locals 1

    .line 64
    :try_start_0
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->DEBUG_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    if-eqz p0, :cond_2

    const-string v0, "unknown"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    .line 73
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    :catch_0
    :cond_1
    :try_start_2
    const-string p1, "extension:error"

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    sget-object v0, Lcom/distriqt/core/utils/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0, p0}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static listViews(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 9

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 185
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "com.distriqt.corelibraries"

    .line 186
    sget-object v4, Lcom/distriqt/core/utils/FREUtils;->TAG:Ljava/lang/String;

    const-string v5, "%s%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3, v4, v5, v6}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    const-class v3, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/distriqt/core/utils/FREUtils;->listViews(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "com.distriqt.corelibraries"

    .line 50
    invoke-static {v0, p0, p1, p2}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static moveToBack(Landroid/view/View;)V
    .locals 4

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
