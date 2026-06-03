.class public final enum Lcom/google/android/gms/measurement/internal/zziq$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zziq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zziq$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

.field private static final synthetic zzf:[Lcom/google/android/gms/measurement/internal/zziq$zza;


# instance fields
.field public final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zziq$zza;

    const-string v1, "AD_STORAGE"

    const-string v2, "ad_storage"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zziq$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zziq$zza;

    const-string v1, "ANALYTICS_STORAGE"

    const-string v2, "analytics_storage"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zziq$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zziq$zza;

    const-string v1, "AD_USER_DATA"

    const-string v2, "ad_user_data"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zziq$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zziq$zza;

    const-string v1, "AD_PERSONALIZATION"

    const-string v2, "ad_personalization"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zziq$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    aput-object v1, v0, v6

    .line 6
    sput-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzf:[Lcom/google/android/gms/measurement/internal/zziq$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zziq$zza;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzf:[Lcom/google/android/gms/measurement/internal/zziq$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zziq$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zziq$zza;

    return-object v0
.end method
