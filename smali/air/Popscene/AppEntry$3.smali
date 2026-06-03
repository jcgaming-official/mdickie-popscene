.class Lair/Popscene/AppEntry$3;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/Popscene/AppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/Popscene/AppEntry;


# direct methods
.method constructor <init>(Lair/Popscene/AppEntry;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lair/Popscene/AppEntry$3;->this$0:Lair/Popscene/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lair/Popscene/AppEntry$3;->this$0:Lair/Popscene/AppEntry;

    invoke-virtual {p1, p0}, Lair/Popscene/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 261
    iget-object p1, p0, Lair/Popscene/AppEntry$3;->this$0:Lair/Popscene/AppEntry;

    invoke-static {p1}, Lair/Popscene/AppEntry;->access$200(Lair/Popscene/AppEntry;)V

    .line 262
    iget-object p1, p0, Lair/Popscene/AppEntry$3;->this$0:Lair/Popscene/AppEntry;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lair/Popscene/AppEntry;->access$300(Lair/Popscene/AppEntry;Z)V

    .line 264
    invoke-static {}, Lair/Popscene/AppEntry;->access$400()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lair/Popscene/AppEntry$3;->this$0:Lair/Popscene/AppEntry;

    invoke-static {p1}, Lair/Popscene/AppEntry;->access$500(Lair/Popscene/AppEntry;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {}, Lair/Popscene/AppEntry;->access$600()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
