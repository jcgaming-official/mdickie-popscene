.class Lcom/adobe/air/AndroidActivityWrapper$5;
.super Ljava/lang/Object;
.source "AndroidActivityWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidActivityWrapper;->initScoutServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0

    .line 3006
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper$5;->this$0:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 3017
    invoke-static {p2}, Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/harman/air/scout/companion/IscoutAidlInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/air/AndroidActivityWrapper;->access$702(Lcom/harman/air/scout/companion/IscoutAidlInterface;)Lcom/harman/air/scout/companion/IscoutAidlInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 3010
    invoke-static {p1}, Lcom/adobe/air/AndroidActivityWrapper;->access$702(Lcom/harman/air/scout/companion/IscoutAidlInterface;)Lcom/harman/air/scout/companion/IscoutAidlInterface;

    return-void
.end method
