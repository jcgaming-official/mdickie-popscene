.class final enum Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
.super Ljava/lang/Enum;
.source "AndroidActivityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidActivityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DebugMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/air/AndroidActivityWrapper$DebugMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

.field public static final enum ConflictMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

.field public static final enum ConnectMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

.field public static final enum ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

.field public static final enum None:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;


# direct methods
.method private static synthetic $values()[Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    .locals 3

    const/4 v0, 0x4

    .line 1959
    new-array v0, v0, [Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->None:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConnectMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConflictMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1960
    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->None:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1961
    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const-string v1, "ConnectMode"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConnectMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1962
    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const-string v1, "ListenMode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1963
    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const-string v1, "ConflictMode"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConflictMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1959
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->$values()[Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->$VALUES:[Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1959
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    .locals 1

    .line 1959
    const-class v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    return-object p0
.end method

.method public static values()[Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    .locals 1

    .line 1959
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->$VALUES:[Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    invoke-virtual {v0}, [Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    return-object v0
.end method
