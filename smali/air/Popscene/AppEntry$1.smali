.class Lair/Popscene/AppEntry$1;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 106
    iput-object p1, p0, Lair/Popscene/AppEntry$1;->this$0:Lair/Popscene/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 109
    invoke-static {}, Lair/Popscene/AppEntry;->access$000()Lair/Popscene/AppEntry;

    move-result-object p1

    invoke-static {}, Lair/Popscene/AppEntry;->access$100()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v0}, Lcom/adobe/air/InstallOfferPingUtils;->PingAndExit(Landroid/app/Activity;Ljava/lang/String;ZZZ)V

    return-void
.end method
