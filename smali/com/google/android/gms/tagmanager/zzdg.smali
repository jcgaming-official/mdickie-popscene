.class public final Lcom/google/android/gms/tagmanager/zzdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field static zza:I

.field static final zzb:Lcom/google/android/gms/tagmanager/zzbf;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    return-void
.end method
