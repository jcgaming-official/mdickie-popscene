.class public enum Lcom/google/android/gms/internal/measurement/zzni;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzni;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzn:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzo:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzp:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzq:Lcom/google/android/gms/internal/measurement/zzni;

.field public static final enum zzr:Lcom/google/android/gms/internal/measurement/zzni;

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/measurement/zzni;


# instance fields
.field private final zzt:Lcom/google/android/gms/internal/measurement/zzns;

.field private final zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzd:Lcom/google/android/gms/internal/measurement/zzns;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zza:Lcom/google/android/gms/internal/measurement/zzni;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzc:Lcom/google/android/gms/internal/measurement/zzns;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzb:Lcom/google/android/gms/internal/measurement/zzni;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzb:Lcom/google/android/gms/internal/measurement/zzns;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzc:Lcom/google/android/gms/internal/measurement/zzni;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzb:Lcom/google/android/gms/internal/measurement/zzns;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzd:Lcom/google/android/gms/internal/measurement/zzni;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "INT32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zza:Lcom/google/android/gms/internal/measurement/zzns;

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zze:Lcom/google/android/gms/internal/measurement/zzni;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzb:Lcom/google/android/gms/internal/measurement/zzns;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzf:Lcom/google/android/gms/internal/measurement/zzni;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "FIXED32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zza:Lcom/google/android/gms/internal/measurement/zzns;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzg:Lcom/google/android/gms/internal/measurement/zzni;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "BOOL"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zze:Lcom/google/android/gms/internal/measurement/zzns;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzh:Lcom/google/android/gms/internal/measurement/zzni;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznl;

    const-string v12, "STRING"

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzns;->zzf:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v13, 0x8

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/measurement/zznl;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;ILcom/google/android/gms/internal/measurement/zznk;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzi:Lcom/google/android/gms/internal/measurement/zzni;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznn;

    const-string v18, "GROUP"

    sget-object v20, Lcom/google/android/gms/internal/measurement/zzns;->zzi:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v19, 0x9

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/internal/measurement/zznn;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;ILcom/google/android/gms/internal/measurement/zznm;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzj:Lcom/google/android/gms/internal/measurement/zzni;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznp;

    const-string v12, "MESSAGE"

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzns;->zzi:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v13, 0xa

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/measurement/zznp;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;ILcom/google/android/gms/internal/measurement/zzno;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzk:Lcom/google/android/gms/internal/measurement/zzni;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznr;

    const-string v18, "BYTES"

    sget-object v20, Lcom/google/android/gms/internal/measurement/zzns;->zzg:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v19, 0xb

    const/16 v21, 0x2

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/internal/measurement/zznr;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;ILcom/google/android/gms/internal/measurement/zznq;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzl:Lcom/google/android/gms/internal/measurement/zzni;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "UINT32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zza:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v11, 0xc

    invoke-direct {v0, v1, v11, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzm:Lcom/google/android/gms/internal/measurement/zzni;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "ENUM"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzh:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v12, 0xd

    invoke-direct {v0, v1, v12, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzn:Lcom/google/android/gms/internal/measurement/zzni;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "SFIXED32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zza:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v13, 0xe

    invoke-direct {v0, v1, v13, v2, v5}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzo:Lcom/google/android/gms/internal/measurement/zzni;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "SFIXED64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzb:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v14, 0xf

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzp:Lcom/google/android/gms/internal/measurement/zzni;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "SINT32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zza:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "SINT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzns;->zzb:Lcom/google/android/gms/internal/measurement/zzns;

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzr:Lcom/google/android/gms/internal/measurement/zzni;

    const/16 v0, 0x12

    .line 21
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzni;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zza:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzb:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzc:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzd:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zze:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzf:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzg:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzh:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzi:Lcom/google/android/gms/internal/measurement/zzni;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzj:Lcom/google/android/gms/internal/measurement/zzni;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzk:Lcom/google/android/gms/internal/measurement/zzni;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzl:Lcom/google/android/gms/internal/measurement/zzni;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzm:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzn:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzo:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzp:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzni;->zzr:Lcom/google/android/gms/internal/measurement/zzni;

    aput-object v1, v0, v15

    .line 22
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzs:[Lcom/google/android/gms/internal/measurement/zzni;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzns;",
            "I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzt:Lcom/google/android/gms/internal/measurement/zzns;

    .line 25
    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzu:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;ILcom/google/android/gms/internal/measurement/zznt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzni;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzns;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzni;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzs:[Lcom/google/android/gms/internal/measurement/zzni;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzni;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzni;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzu:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzns;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzt:Lcom/google/android/gms/internal/measurement/zzns;

    return-object v0
.end method
