.class public final enum Lcom/google/android/gms/internal/play_billing/zzgv;
.super Ljava/lang/Enum;
.source "com.android.billingclient:billing@@6.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdf;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/play_billing/zzgv;

.field public static final enum zzb:Lcom/google/android/gms/internal/play_billing/zzgv;

.field public static final enum zzc:Lcom/google/android/gms/internal/play_billing/zzgv;

.field public static final enum zzd:Lcom/google/android/gms/internal/play_billing/zzgv;

.field private static final zze:Lcom/google/android/gms/internal/play_billing/zzdg;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/play_billing/zzgv;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgv;

    const-string v1, "BROADCAST_ACTION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_billing/zzgv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:Lcom/google/android/gms/internal/play_billing/zzgv;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgv;

    const-string v1, "PURCHASES_UPDATED_ACTION"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/play_billing/zzgv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzb:Lcom/google/android/gms/internal/play_billing/zzgv;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgv;

    const-string v1, "LOCAL_PURCHASES_UPDATED_ACTION"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/play_billing/zzgv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzc:Lcom/google/android/gms/internal/play_billing/zzgv;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgv;

    const-string v1, "ALTERNATIVE_BILLING_ACTION"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/play_billing/zzgv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzd:Lcom/google/android/gms/internal/play_billing/zzgv;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/play_billing/zzgv;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:Lcom/google/android/gms/internal/play_billing/zzgv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgv;->zzb:Lcom/google/android/gms/internal/play_billing/zzgv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgv;->zzc:Lcom/google/android/gms/internal/play_billing/zzgv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgv;->zzd:Lcom/google/android/gms/internal/play_billing/zzgv;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzf:[Lcom/google/android/gms/internal/play_billing/zzgv;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zze:Lcom/google/android/gms/internal/play_billing/zzdg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/zzgv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzf:[Lcom/google/android/gms/internal/play_billing/zzgv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/zzgv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/zzgv;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzg:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgv;->zzg:I

    return v0
.end method
