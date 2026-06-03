.class Lcom/adobe/air/ConfigDownloadListener$2;
.super Ljava/lang/Object;
.source "ConfigDownloadListener.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/ConfigDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/ConfigDownloadListener;


# direct methods
.method constructor <init>(Lcom/adobe/air/ConfigDownloadListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 3

    .line 104
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-static {p1}, Lcom/adobe/air/ConfigDownloadListener;->access$100(Lcom/adobe/air/ConfigDownloadListener;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    iget-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/adobe/air/ConfigDownloadListener;->access$002(Lcom/adobe/air/ConfigDownloadListener;J)J

    goto :goto_0

    .line 109
    :cond_0
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v1, :cond_2

    .line 111
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-static {p1}, Lcom/adobe/air/ConfigDownloadListener;->access$100(Lcom/adobe/air/ConfigDownloadListener;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.adobe.air.DownloadConfigComplete"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-static {p1}, Lcom/adobe/air/ConfigDownloadListener;->access$100(Lcom/adobe/air/ConfigDownloadListener;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.adobe.air.DownloadConfigComplete"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
