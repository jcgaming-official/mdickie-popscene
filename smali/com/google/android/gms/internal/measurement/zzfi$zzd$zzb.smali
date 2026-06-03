.class public final enum Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfi$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjx;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzka<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    const-string v1, "UNKNOWN_COMPARISON_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    const-string v1, "LESS_THAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    const-string v1, "GREATER_THAN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    const-string v1, "EQUAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    const-string v1, "BETWEEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    const/4 v0, 0x5

    .line 25
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    aput-object v1, v0, v6

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzg:[Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzka;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzg:[Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    return-object p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    return-object p0

    .line 3
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzjz;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfk;->zza:Lcom/google/android/gms/internal/measurement/zzjz;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzh:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zzb;->zzh:I

    return v0
.end method
