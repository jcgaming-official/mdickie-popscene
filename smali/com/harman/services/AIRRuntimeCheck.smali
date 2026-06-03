.class public Lcom/harman/services/AIRRuntimeCheck;
.super Ljava/lang/Object;
.source "AIRRuntimeCheck.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRRuntimeCheck"

.field private static _appDescriptor:Lorg/w3c/dom/Document;

.field private static _bShowingSplash:Ljava/lang/Boolean;

.field private static _startupChecksDone:Z

.field private static m_disableSensorAccess:Z

.field private static m_displayCutoutMode:Ljava/lang/String;

.field private static m_entryPoints:Lcom/adobe/air/Entrypoints;

.field private static m_hasDoneSplash:Z

.field private static m_orientationAnimation:Ljava/lang/String;

.field private static m_preventBuildModelAccess:Z

.field private static m_requestedJNIFontVersion:I

.field private static m_requestedSAFVersion:I

.field private static m_runInAsyncMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    const/16 v1, 0x1f

    .line 305
    sput v1, Lcom/harman/services/AIRRuntimeCheck;->m_requestedJNIFontVersion:I

    const/16 v1, 0x1e

    .line 332
    sput v1, Lcom/harman/services/AIRRuntimeCheck;->m_requestedSAFVersion:I

    .line 358
    sput-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_preventBuildModelAccess:Z

    .line 389
    sput-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_disableSensorAccess:Z

    .line 424
    sput-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_runInAsyncMode:Z

    const/4 v1, 0x0

    .line 449
    sput-object v1, Lcom/harman/services/AIRRuntimeCheck;->m_orientationAnimation:Ljava/lang/String;

    .line 474
    sput-object v1, Lcom/harman/services/AIRRuntimeCheck;->m_displayCutoutMode:Ljava/lang/String;

    .line 503
    sput-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->_startupChecksDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBuildModelAccess()V
    .locals 2

    .line 361
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->loadAppDescriptor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    :try_start_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "preventDeviceModelAccess"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 366
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "true"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    sput-boolean v1, Lcom/harman/services/AIRRuntimeCheck;->m_preventBuildModelAccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private static checkDisableSensorAccess()V
    .locals 5

    .line 392
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->loadAppDescriptor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    :try_start_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "disableSensorAccess"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 397
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "true"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_disableSensorAccess:Z

    .line 402
    :cond_2
    sget-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_disableSensorAccess:Z

    if-eqz v0, :cond_3

    .line 405
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 406
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 407
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 408
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->GetAppDataDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Local Store/.allowSensorAccess"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v2, Lcom/harman/services/AIRRuntimeCheck;->m_disableSensorAccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private static checkDisplayCutoutMode()V
    .locals 2

    .line 477
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->loadAppDescriptor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :try_start_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "displayCutoutMode"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 482
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/harman/services/AIRRuntimeCheck;->m_displayCutoutMode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static checkOrientationAnimation()V
    .locals 2

    .line 452
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->loadAppDescriptor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :try_start_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "orientationAnimation"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 457
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/harman/services/AIRRuntimeCheck;->m_orientationAnimation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static checkRequestedJNIFontVersion()V
    .locals 2

    .line 308
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->loadAppDescriptor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :try_start_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "newFontRenderingFromAPI"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 313
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/harman/services/AIRRuntimeCheck;->m_requestedJNIFontVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static checkRequestedSAFVersion()V
    .locals 2

    .line 335
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->loadAppDescriptor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :try_start_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "storageAccessFrameworkFromAPI"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 340
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/harman/services/AIRRuntimeCheck;->m_requestedSAFVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static checkRunInAsyncMode()V
    .locals 2

    .line 427
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->loadAppDescriptor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    :try_start_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const-string v1, "runtimeInBackgroundThread"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 432
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 433
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "true"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    sput-boolean v1, Lcom/harman/services/AIRRuntimeCheck;->m_runInAsyncMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static displayCutoutMode()Ljava/lang/String;
    .locals 1

    .line 492
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->m_displayCutoutMode:Ljava/lang/String;

    return-object v0
.end method

.method public static doSplashScreen(Lcom/adobe/air/Entrypoints;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 189
    sget-boolean p1, Lcom/harman/services/AIRRuntimeCheck;->m_hasDoneSplash:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 190
    sput-boolean p1, Lcom/harman/services/AIRRuntimeCheck;->m_hasDoneSplash:Z

    .line 193
    sput-object p0, Lcom/harman/services/AIRRuntimeCheck;->m_entryPoints:Lcom/adobe/air/Entrypoints;

    .line 194
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v2

    .line 200
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "META-INF/AIR/license.txt"

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 202
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 203
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 204
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const-string v3, "META-INF/AIR/application.xml"

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 208
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v5, "<id>.*</id>"

    .line 209
    invoke-virtual {v3, v5, v0}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 211
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x4

    if-eqz v5, :cond_1

    .line 212
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v3, "DevID"

    .line 214
    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "License"

    .line 215
    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_2

    .line 223
    invoke-virtual {p0, v3, v5, v4}, Lcom/adobe/air/Entrypoints;->checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_3

    .line 228
    invoke-virtual {p0, v3, p2, v4}, Lcom/adobe/air/Entrypoints;->checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    :cond_3
    if-eqz v5, :cond_4

    const-string v6, "air."

    .line 231
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2, v4}, Lcom/adobe/air/Entrypoints;->checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    move p0, v5

    goto :goto_1

    :catch_0
    :cond_5
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_6

    .line 247
    :try_start_1
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->showSplash()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 p0, 0x0

    :cond_6
    :goto_2
    if-nez p0, :cond_8

    .line 259
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getViewSplashScreenImageView()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 260
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_7
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_8
    return p0
.end method

.method public static getBuildModel()Ljava/lang/String;
    .locals 1

    .line 381
    sget-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_preventBuildModelAccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static loadAppDescriptor()Z
    .locals 5

    .line 276
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 278
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    .line 284
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "META-INF/AIR/application.xml"

    .line 285
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 287
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 290
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    .line 291
    sput-object v2, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    .line 292
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AIR SDK"

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure in opening app descriptor file for initial settings - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_appDescriptor:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static md5Sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "MD5"

    .line 94
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 97
    invoke-static {p0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static orientationAnimation()Ljava/lang/String;
    .locals 1

    .line 467
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->m_orientationAnimation:Ljava/lang/String;

    return-object v0
.end method

.method public static removeSplash()V
    .locals 2

    .line 169
    sget-object v0, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIRRuntimeCheck"

    const-string v1, "AIR - removing splash screen"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 172
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    .line 173
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/harman/services/AIRRuntimeCheck$1;

    invoke-direct {v1}, Lcom/harman/services/AIRRuntimeCheck$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static runtimeStartupChecks()V
    .locals 1

    .line 506
    sget-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->_startupChecksDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 507
    sput-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->_startupChecksDone:Z

    .line 508
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->checkRequestedJNIFontVersion()V

    .line 509
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->checkRequestedSAFVersion()V

    .line 510
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->checkBuildModelAccess()V

    .line 511
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->checkDisableSensorAccess()V

    .line 512
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->checkRunInAsyncMode()V

    .line 513
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->checkOrientationAnimation()V

    .line 514
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->checkDisplayCutoutMode()V

    return-void
.end method

.method public static shouldDisableClipboardAccess()Z
    .locals 1

    .line 500
    sget-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_disableSensorAccess:Z

    return v0
.end method

.method public static shouldDisableSensorAccess()Z
    .locals 1

    .line 418
    sget-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_disableSensorAccess:Z

    return v0
.end method

.method public static shouldPreventBuildModelAccess()Z
    .locals 1

    .line 377
    sget-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_preventBuildModelAccess:Z

    return v0
.end method

.method public static shouldRunInAsyncMode()Z
    .locals 1

    .line 443
    sget-boolean v0, Lcom/harman/services/AIRRuntimeCheck;->m_runInAsyncMode:Z

    return v0
.end method

.method public static shouldUseJNIFonts()Z
    .locals 2

    .line 325
    sget v0, Lcom/harman/services/AIRRuntimeCheck;->m_requestedJNIFontVersion:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shouldUseSAF()Z
    .locals 2

    .line 352
    sget v0, Lcom/harman/services/AIRRuntimeCheck;->m_requestedSAFVersion:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showBetaPopup()V
    .locals 1

    const-string v0, "BETA RELEASE: not for distribution"

    .line 80
    invoke-static {v0}, Lcom/harman/services/AIRRuntimeCheck;->showPopup(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showExpiredPopup()V
    .locals 1

    const-string v0, "BETA RELEASE HAS EXPIRED. Please update to a standard release"

    .line 86
    invoke-static {v0}, Lcom/harman/services/AIRRuntimeCheck;->showPopup(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static showPopup(Ljava/lang/CharSequence;)V
    .locals 2

    .line 71
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 74
    invoke-virtual {p0, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showSplash()V
    .locals 14

    const-string v0, "AIRRuntimeCheck"

    const-string v1, "AIR - showing Splash Screen"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/AIRWindowSurfaceView;

    .line 117
    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v2

    .line 118
    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    .line 119
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-ge v2, v1, :cond_0

    const-string v4, "splash_portrait"

    goto :goto_0

    :cond_0
    const-string v4, "splash_landscape"

    .line 122
    :goto_0
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    .line 123
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 122
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 124
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 126
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v7, 0x1e

    const/16 v6, 0x64

    .line 129
    div-int/lit8 v8, v5, 0x64

    mul-int/lit8 v5, v7, 0x32

    .line 130
    div-int/2addr v5, v6

    sub-int v12, v5, v8

    if-ge v2, v1, :cond_1

    const/16 v1, 0x19

    goto :goto_1

    :cond_1
    const/16 v1, 0x28

    :goto_1
    mul-int v4, v4, v1

    .line 131
    div-int/lit8 v9, v4, 0x64

    const/16 v1, 0x99

    const/4 v2, 0x0

    .line 132
    invoke-static {v2, v6, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 134
    new-array v13, v12, [I

    const/4 v6, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    move-object v5, v13

    move v10, v12

    .line 136
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v12, :cond_3

    .line 138
    aget v6, v13, v4

    if-ne v6, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    .line 146
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/harman/services/AIRRuntimeCheck;->_bShowingSplash:Ljava/lang/Boolean;

    .line 148
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getViewSplashScreenImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 151
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_4
    const-string v1, "AIR SDK"

    const-string v3, "Invalid splash screen image used - please check your SDK"

    .line 156
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WARNING: Unlicensed version of AIR SDK"

    .line 157
    invoke-static {v1}, Lcom/harman/services/AIRRuntimeCheck;->showPopup(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->finish()V

    .line 159
    sput-boolean v2, Lcom/harman/services/AIRRuntimeCheck;->m_hasDoneSplash:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "AIRRuntimeCheck"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSplash ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
