.class Lair/Popscene/AppEntry$2;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/Popscene/AppEntry;->showDialog(ILjava/lang/String;II)V
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

    .line 121
    iput-object p1, p0, Lair/Popscene/AppEntry$2;->this$0:Lair/Popscene/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 124
    invoke-static {}, Lair/Popscene/AppEntry;->access$000()Lair/Popscene/AppEntry;

    move-result-object p1

    invoke-static {}, Lair/Popscene/AppEntry;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v1, v2}, Lcom/adobe/air/InstallOfferPingUtils;->PingAndExit(Landroid/app/Activity;Ljava/lang/String;ZZZ)V

    return-void
.end method
