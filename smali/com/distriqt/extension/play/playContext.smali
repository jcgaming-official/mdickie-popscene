.class public Lcom/distriqt/extension/play/playContext;
.super Lcom/adobe/fre/FREContext;
.source "playContext.java"

# interfaces
.implements Lcom/distriqt/core/utils/IExtensionContext;
.implements Lcom/adobe/air/ActivityResultCallback;
.implements Lcom/adobe/air/StateChangeCallback;


# static fields
.field public static final IMPLEMENTATION:Ljava/lang/String; = "Android"

.field public static final TAG:Ljava/lang/String; = "playContext"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private _aaw:Lcom/adobe/air/AndroidActivityWrapper;

.field private _controller:Lcom/distriqt/extension/play/controller/playController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    .line 59
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/play/playContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 60
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 61
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    return-void
.end method


# virtual methods
.method public controller()Lcom/distriqt/extension/play/controller/playController;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/distriqt/extension/play/controller/playController;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/play/controller/playController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    return-object v0
.end method

.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 178
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/distriqt/extension/play/playContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 71
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 72
    iput-object v1, p0, Lcom/distriqt/extension/play/playContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {v0}, Lcom/distriqt/extension/play/controller/playController;->dispose()V

    .line 77
    iput-object v1, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    :cond_1
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isSupported"

    .line 87
    new-instance v2, Lcom/distriqt/extension/play/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/play/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 88
    new-instance v2, Lcom/distriqt/extension/play/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/play/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "implementation"

    .line 89
    new-instance v2, Lcom/distriqt/extension/play/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/play/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/distriqt/extension/play/controller/playController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/distriqt/extension/play/playContext$1;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object p1, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {p1}, Lcom/distriqt/extension/play/controller/playController;->onResume()V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object p1, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {p1}, Lcom/distriqt/extension/play/controller/playController;->onDestroy()V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object p1, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {p1}, Lcom/distriqt/extension/play/controller/playController;->onRestart()V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object p1, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {p1}, Lcom/distriqt/extension/play/controller/playController;->onPause()V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object p1, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {p1}, Lcom/distriqt/extension/play/controller/playController;->onStop()V

    goto :goto_0

    .line 135
    :pswitch_5
    iget-object p1, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {p1}, Lcom/distriqt/extension/play/controller/playController;->onStart()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/distriqt/extension/play/playContext;->_controller:Lcom/distriqt/extension/play/controller/playController;

    invoke-virtual {v0, p1}, Lcom/distriqt/extension/play/controller/playController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
