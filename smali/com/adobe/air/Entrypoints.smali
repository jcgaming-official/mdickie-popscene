.class public Lcom/adobe/air/Entrypoints;
.super Ljava/lang/Object;
.source "Entrypoints.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/Entrypoints$AsyncEntryHandler;
    }
.end annotation


# static fields
.field private static final MSG_ENTRYMAINWRAPPER:I = 0x1

.field private static final MSG_QUIT:I = 0x2

.field static mCallEntryMain:Z

.field private static mEntryPointHandler:Landroid/os/Handler;

.field private static mLibCorePath:Ljava/lang/String;

.field private static mMainHandler:Lcom/adobe/air/customHandler;

.field public static s_context:Landroid/content/Context;

.field private static s_packageName:Ljava/lang/String;


# instance fields
.field private _activityWrapper:Ljava/lang/Object;

.field private _app:Ljava/lang/Object;

.field private _appInfo:Ljava/lang/Object;

.field private _appRootDir:Ljava/lang/String;

.field private _appXmlPath:Ljava/lang/String;

.field private _context:Ljava/lang/Object;

.field private _extraArgs:Ljava/lang/String;

.field private _isADL:Z

.field private _isDebuggerMode:Z

.field private _mainView:Ljava/lang/Object;

.field private _runtimePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/adobe/air/customHandler;

    invoke-direct {v0}, Lcom/adobe/air/customHandler;-><init>()V

    sput-object v0, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/adobe/air/customHandler;
    .locals 1

    .line 41
    sget-object v0, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    return-object v0
.end method

.method public static getAppCacheDirectory()Ljava/lang/String;
    .locals 1

    .line 328
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAsyncHandler()Landroid/os/Handler;
    .locals 3

    .line 72
    sget-object v0, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 73
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    return-object v1

    .line 74
    :cond_1
    sget-object v0, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 66
    sget-object v0, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 323
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getRuntimeDataDirectory()Ljava/lang/String;
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerCallback(IIILandroid/os/Handler;)V
    .locals 2

    if-nez p3, :cond_1

    .line 85
    sget-object p3, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 88
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x45f

    .line 89
    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 91
    iput p2, v0, Landroid/os/Message;->arg2:I

    if-lez p0, :cond_2

    int-to-long p0, p0

    .line 94
    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method public static registerCertificateCallback(ILcom/adobe/air/CertificateEventData;Landroid/os/Handler;)Z
    .locals 2

    if-nez p2, :cond_1

    .line 190
    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 193
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x464

    .line 194
    iput v1, v0, Landroid/os/Message;->what:I

    .line 196
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_2

    int-to-long p0, p0

    .line 199
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static registerGestureCallback(Lcom/adobe/air/gestures/GestureEventDataBase;)Z
    .locals 2

    .line 209
    sget-object v0, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/adobe/air/gestures/GestureEventDataBase;->sendEvent()Z

    move-result p0

    return p0

    .line 210
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x466

    .line 211
    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    sget-object p0, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static registerKeyCallback(ILcom/adobe/air/KeyEventData;Landroid/os/Handler;)Z
    .locals 2

    if-nez p2, :cond_1

    .line 125
    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 128
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x461

    .line 129
    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_2

    int-to-long p0, p0

    .line 134
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static registerPanningCallback(ILcom/adobe/air/PanEventData;Landroid/os/Handler;)Z
    .locals 2

    if-nez p2, :cond_1

    .line 145
    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 148
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x462

    .line 149
    iput v1, v0, Landroid/os/Message;->what:I

    .line 151
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_2

    int-to-long p0, p0

    .line 154
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z
    .locals 2

    if-nez p2, :cond_1

    .line 105
    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 108
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x460

    .line 109
    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_2

    int-to-long p0, p0

    .line 114
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static registerWindowCallback(ILcom/adobe/air/WindowEventData;Landroid/os/Handler;)Z
    .locals 2

    if-nez p2, :cond_1

    .line 165
    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/adobe/air/WindowEventData;->run()Z

    move-result p0

    return p0

    .line 173
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x463

    .line 174
    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_3

    int-to-long p0, p0

    .line 179
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public EntryApplyDownloadedConfig()V
    .locals 0

    .line 307
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->applyDownloadedConfig()V

    return-void
.end method

.method public EntryDownloadConfig(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .line 283
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    .line 285
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 286
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    .line 288
    sget-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/air/ApplicationFileManager;->setAndroidPackageName(Ljava/lang/String;)V

    .line 291
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidAPKPath(Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 297
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->processAndroidDataPath(Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibSTLPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/adobe/air/Entrypoints;->EntryDownloadConfigNative(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public native EntryDownloadConfigNative(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public native EntryGetRuntimeDetails()Ljava/lang/String;
.end method

.method public native EntryLifecycleChange(I)V
.end method

.method public EntryMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 13

    move-object v11, p0

    move-object/from16 v0, p7

    move-object/from16 v7, p8

    .line 237
    move-object v1, v7

    check-cast v1, Landroid/content/Context;

    sput-object v1, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    .line 238
    move-object v1, v0

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    const-string v1, "AIR RUNTIME"

    .line 239
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->EntryGetRuntimeDetails()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-boolean v1, Lcom/adobe/air/Entrypoints;->mCallEntryMain:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 243
    sput-boolean v1, Lcom/adobe/air/Entrypoints;->mCallEntryMain:Z

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 248
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->shouldRunInAsyncMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AIR RUNTIME"

    const-string v2, "Starting in asynchronous mode"

    .line 249
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->setUpAsyncMode()V

    move-object v1, p1

    .line 252
    iput-object v1, v11, Lcom/adobe/air/Entrypoints;->_appXmlPath:Ljava/lang/String;

    move-object v2, p2

    .line 253
    iput-object v2, v11, Lcom/adobe/air/Entrypoints;->_appRootDir:Ljava/lang/String;

    move-object/from16 v3, p3

    .line 254
    iput-object v3, v11, Lcom/adobe/air/Entrypoints;->_extraArgs:Ljava/lang/String;

    move-object/from16 v4, p4

    .line 255
    iput-object v4, v11, Lcom/adobe/air/Entrypoints;->_runtimePackageName:Ljava/lang/String;

    move-object/from16 v5, p5

    .line 256
    iput-object v5, v11, Lcom/adobe/air/Entrypoints;->_mainView:Ljava/lang/Object;

    move-object/from16 v6, p6

    .line 257
    iput-object v6, v11, Lcom/adobe/air/Entrypoints;->_app:Ljava/lang/Object;

    .line 258
    iput-object v0, v11, Lcom/adobe/air/Entrypoints;->_appInfo:Ljava/lang/Object;

    .line 259
    iput-object v7, v11, Lcom/adobe/air/Entrypoints;->_context:Ljava/lang/Object;

    move-object/from16 v8, p9

    .line 260
    iput-object v8, v11, Lcom/adobe/air/Entrypoints;->_activityWrapper:Ljava/lang/Object;

    move/from16 v9, p10

    .line 261
    iput-boolean v9, v11, Lcom/adobe/air/Entrypoints;->_isADL:Z

    move/from16 v10, p11

    .line 262
    iput-boolean v10, v11, Lcom/adobe/air/Entrypoints;->_isDebuggerMode:Z

    .line 263
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    const-string v0, "AIR RUNTIME"

    const-string v12, "Starting in synchronous mode"

    .line 266
    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object/from16 v7, p8

    .line 267
    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/Entrypoints;->EntryMainWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public native EntryMainWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
.end method

.method public EntryStopRuntime()V
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->EntryStopRuntimeNative()V

    return-void
.end method

.method public native EntryStopRuntimeNative()V
.end method

.method public GetLibCorePath()Ljava/lang/String;
    .locals 1

    .line 275
    sget-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibCorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    .line 278
    :cond_0
    sget-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    return-object v0
.end method

.method public native applyDownloadedConfig()V
.end method

.method public native checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public quit()V
    .locals 2

    .line 385
    sget-object v0, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public run()V
    .locals 13

    .line 339
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 340
    new-instance v0, Lcom/adobe/air/Entrypoints$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/Entrypoints$1;-><init>(Lcom/adobe/air/Entrypoints;Landroid/os/Looper;)V

    sput-object v0, Lcom/adobe/air/Entrypoints;->mEntryPointHandler:Landroid/os/Handler;

    .line 377
    iget-object v3, p0, Lcom/adobe/air/Entrypoints;->_appXmlPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/air/Entrypoints;->_appRootDir:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/air/Entrypoints;->_extraArgs:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/air/Entrypoints;->_runtimePackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/adobe/air/Entrypoints;->_mainView:Ljava/lang/Object;

    iget-object v8, p0, Lcom/adobe/air/Entrypoints;->_app:Ljava/lang/Object;

    iget-object v9, p0, Lcom/adobe/air/Entrypoints;->_context:Ljava/lang/Object;

    iget-object v10, p0, Lcom/adobe/air/Entrypoints;->_activityWrapper:Ljava/lang/Object;

    iget-boolean v11, p0, Lcom/adobe/air/Entrypoints;->_isADL:Z

    iget-boolean v12, p0, Lcom/adobe/air/Entrypoints;->_isDebuggerMode:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/adobe/air/Entrypoints;->EntryMainWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    .line 378
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->sendUIMessage(I)V

    .line 380
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setMainView(Landroid/view/View;)V
    .locals 0

    .line 318
    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p0, p1}, Lcom/adobe/air/Entrypoints;->setMainViewOnCreate(Lcom/adobe/air/AIRWindowSurfaceView;)V

    return-void
.end method

.method public native setMainViewOnCreate(Lcom/adobe/air/AIRWindowSurfaceView;)V
.end method
