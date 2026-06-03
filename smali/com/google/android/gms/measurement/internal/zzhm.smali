.class public Lcom/google/android/gms/measurement/internal/zzhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzio;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzhm;


# instance fields
.field final zza:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzaa:Ljava/lang/Boolean;

.field private zzab:J

.field private volatile zzac:Ljava/lang/Boolean;

.field private zzad:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzae:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile zzaf:Z

.field private zzag:I

.field private zzah:I

.field private zzai:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzab;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzag;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzgo;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzfz;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzhj;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzmn;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzny;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzfy;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzky;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zzjc;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zzb;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzkp;

.field private final zzu:Ljava/lang/String;

.field private zzv:Lcom/google/android/gms/measurement/internal/zzfw;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzld;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzax;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzft;

.field private zzz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzja;)V
    .locals 7

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzz:Z

    .line 144
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 145
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zza:Landroid/content/Context;

    .line 147
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/content/Context;)V

    .line 148
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzh:Lcom/google/android/gms/measurement/internal/zzab;

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzh:Lcom/google/android/gms/measurement/internal/zzab;

    .line 150
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzab;

    .line 151
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zza:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 152
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzd:Ljava/lang/String;

    .line 153
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzc:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zze:Ljava/lang/String;

    .line 154
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzf:Ljava/lang/String;

    .line 155
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzg:Z

    .line 156
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zze:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzac:Ljava/lang/Boolean;

    .line 157
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzj:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzu:Ljava/lang/String;

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaf:Z

    .line 159
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzg:Lcom/google/android/gms/internal/measurement/zzdq;

    if-eqz v2, :cond_1

    .line 160
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 161
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 162
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 163
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzad:Ljava/lang/Boolean;

    .line 164
    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    const-string v3, "measurementDeactivated"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 165
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 166
    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzae:Ljava/lang/Boolean;

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 168
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzhh;->zzb(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 171
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 173
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzi:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzi:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:J

    .line 177
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 178
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 180
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzgo;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 182
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzip;->zzad()V

    .line 183
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzj:Lcom/google/android/gms/measurement/internal/zzgo;

    .line 185
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzfz;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 187
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzip;->zzad()V

    .line 188
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzk:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 190
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzny;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 192
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzip;->zzad()V

    .line 193
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzn:Lcom/google/android/gms/measurement/internal/zzny;

    .line 195
    new-instance v2, Lcom/google/android/gms/measurement/internal/zziz;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/measurement/internal/zziz;-><init>(Lcom/google/android/gms/measurement/internal/zzja;Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 196
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzfy;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;)V

    .line 197
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzo:Lcom/google/android/gms/measurement/internal/zzfy;

    .line 199
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 200
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzs:Lcom/google/android/gms/measurement/internal/zzb;

    .line 202
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzky;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 204
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 205
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzq:Lcom/google/android/gms/measurement/internal/zzky;

    .line 207
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzjc;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 209
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 210
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzr:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 212
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzmn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzmn;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 215
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzm:Lcom/google/android/gms/measurement/internal/zzmn;

    .line 217
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzip;->zzad()V

    .line 220
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzt:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 222
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzhj;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzip;->zzad()V

    .line 225
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzl:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 226
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzg:Lcom/google/android/gms/internal/measurement/zzdq;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzg:Lcom/google/android/gms/internal/measurement/zzdq;

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzdq;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr v0, v1

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    .line 232
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 233
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    if-nez v3, :cond_4

    .line 234
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzko;

    invoke-direct {v3, v1}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Lcom/google/android/gms/measurement/internal/zzjc;)V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    :cond_4
    if-eqz v0, :cond_6

    .line 236
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    .line 237
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 238
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    .line 239
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 240
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 243
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzl:Lcom/google/android/gms/measurement/internal/zzhj;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhr;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;Lcom/google/android/gms/measurement/internal/zzja;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhj;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzhm;
    .locals 12

    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdq;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    .line 58
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    if-nez v0, :cond_3

    .line 61
    const-class v0, Lcom/google/android/gms/measurement/internal/zzhm;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzja;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzja;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Long;)V

    .line 66
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzhm;-><init>(Lcom/google/android/gms/measurement/internal/zzja;)V

    .line 67
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 68
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 69
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 70
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 71
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Z)V

    .line 75
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zze;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhm;Lcom/google/android/gms/measurement/internal/zzja;)V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 97
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzip;->zzad()V

    .line 100
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzx:Lcom/google/android/gms/measurement/internal/zzax;

    .line 102
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzf:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;J)V

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 105
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzy:Lcom/google/android/gms/measurement/internal/zzft;

    .line 107
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfw;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 110
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzv:Lcom/google/android/gms/measurement/internal/zzfw;

    .line 112
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzld;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzld;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzw:Lcom/google/android/gms/measurement/internal/zzld;

    .line 116
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzn:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzip;->zzae()V

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzj:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzip;->zzae()V

    .line 118
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzy:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzn()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "App measurement initialized, version"

    const-wide/32 v2, 0x16760

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzn()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzad()Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzn()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 131
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzn()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 135
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 136
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzag:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v0, "Not all components initialized"

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzag:I

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzz:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzim;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzip;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzip;->zzaf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzai()Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzt:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzip;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzt:Lcom/google/android/gms/measurement/internal/zzkp;

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzdq;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 321
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 323
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzcf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 327
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 328
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzq;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzny;->zzu:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 331
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zza()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    .line 332
    invoke-static {v3, v2, v1, v4}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Registered app receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza()I

    move-result v1

    .line 337
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v2

    const/16 v3, 0x28

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0xa

    const/16 v8, 0x1e

    if-eqz v2, :cond_5

    .line 338
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 339
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzcz:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v9, "google_analytics_default_allow_ad_storage"

    .line 342
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v2

    .line 344
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v10, "google_analytics_default_allow_analytics_storage"

    .line 345
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v9

    .line 346
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v2, v10, :cond_1

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq v9, v10, :cond_2

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v10

    .line 348
    invoke-virtual {v10, v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 350
    invoke-static {v2, v9, v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzit;Lcom/google/android/gms/measurement/internal/zzit;I)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    goto/16 :goto_1

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v8, :cond_3

    if-ne v1, v3, :cond_4

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v2, v6, v6, v7}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:J

    .line 353
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zziq;JZ)V

    goto/16 :goto_0

    .line 354
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 355
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 356
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 357
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    .line 358
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzk()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_1

    .line 363
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v9, "google_analytics_default_allow_ad_storage"

    .line 365
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 368
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v10, "google_analytics_default_allow_analytics_storage"

    .line 370
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    if-nez v2, :cond_6

    if-eqz v9, :cond_7

    .line 373
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v10

    .line 374
    invoke-virtual {v10, v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 375
    new-instance v1, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v1, v2, v9, v7}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_1

    .line 376
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    if-eq v1, v8, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v8, :cond_8

    if-eq v1, v8, :cond_8

    if-ne v1, v3, :cond_9

    .line 377
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v2, v6, v6, v7}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:J

    .line 378
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zziq;JZ)V

    goto :goto_0

    .line 379
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 382
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    .line 383
    invoke-static {v1, v8}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzk()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_b

    .line 388
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:J

    .line 389
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 390
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzdd:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v4

    .line 391
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zziq;JZ)V

    move-object v0, v1

    .line 392
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zza()I

    move-result v0

    .line 396
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 397
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 398
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzcz:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 400
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v2, "google_analytics_default_allow_ad_user_data"

    .line 401
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v1

    .line 402
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq v1, v2, :cond_d

    .line 403
    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 404
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    .line 405
    invoke-static {v1, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Lcom/google/android/gms/measurement/internal/zzit;I)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 407
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzdd:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    .line 408
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzav;Z)V

    goto/16 :goto_2

    .line 412
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v2, "google_analytics_default_allow_ad_user_data"

    .line 414
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 417
    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzav;

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/Boolean;I)V

    .line 419
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 420
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzdd:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    .line 421
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzav;Z)V

    goto/16 :goto_2

    .line 423
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_e

    if-ne v0, v8, :cond_f

    .line 424
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzav;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/Boolean;I)V

    .line 425
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 426
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzdd:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    .line 427
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzav;Z)V

    goto :goto_2

    .line 429
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_10

    .line 430
    invoke-static {v8, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 431
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    .line 432
    invoke-static {v0, v8}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzg()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 434
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 436
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzdd:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzav;Z)V

    .line 437
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    if-eqz v0, :cond_11

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzh:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zza()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 440
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Landroid/os/Bundle;

    .line 441
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 443
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Ljava/lang/String;

    const-string v2, "allow_personalized_ads"

    .line 444
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {v1, p1, v2, v0, v5}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 446
    :cond_11
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqs;->zza()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    .line 447
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 448
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzcw:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 450
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v1, "google_analytics_tcf_data_enabled"

    .line 452
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_3

    .line 453
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_3
    if-eqz p1, :cond_13

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "TCF client enabled."

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzaq()V

    .line 457
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzao()V

    .line 458
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_14

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 462
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjc;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->zzb()V

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzaf()Z

    move-result p1

    if-nez p1, :cond_19

    .line 464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzac()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zze(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 466
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 467
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zze(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 470
    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 471
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-nez p1, :cond_18

    .line 472
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 473
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzag;->zzx()Z

    move-result p1

    if-nez p1, :cond_18

    .line 475
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 476
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 477
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 479
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 480
    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_18

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 482
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 484
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 485
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 486
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzy()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzft;->zzac()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzx()Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 492
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzn()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzz()V

    .line 494
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzaa()V

    .line 495
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzw:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzld;->zzae()V

    .line 496
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzw:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzld;->zzad()V

    .line 497
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zze:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zza(Ljava/lang/String;)V

    .line 499
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzb(Ljava/lang/String;)V

    .line 502
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    .line 503
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 505
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zze:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zza(Ljava/lang/String;)V

    .line 506
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zze:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzx()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zzq:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 509
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zzq:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zza(Ljava/lang/String;)V

    .line 511
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 512
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 513
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzac()Z

    move-result p1

    .line 514
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzab()Z

    move-result v1

    if-nez v1, :cond_20

    .line 515
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 516
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v1

    if-nez v1, :cond_20

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzb(Z)V

    :cond_20
    if-eqz p1, :cond_21

    .line 519
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzak()V

    .line 520
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzs()Lcom/google/android/gms/measurement/internal/zzmn;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Lcom/google/android/gms/measurement/internal/zzmv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzmv;->zza()V

    .line 521
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzr()Lcom/google/android/gms/measurement/internal/zzld;

    move-result-object p1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzld;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzr()Lcom/google/android/gms/measurement/internal/zzld;

    move-result-object p1

    .line 523
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzt:Lcom/google/android/gms/measurement/internal/zzgq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzld;->zza(Landroid/os/Bundle;)V

    .line 524
    :cond_22
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 525
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 526
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzcf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 527
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzw()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 528
    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzjc;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 529
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 530
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgo;->zzj:Lcom/google/android/gms/measurement/internal/zzgn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Z)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 3

    const/4 p1, 0x1

    const/16 p5, 0xc8

    if-eq p2, p5, :cond_0

    const/16 p5, 0xcc

    if-eq p2, p5, :cond_0

    const/16 p5, 0x130

    if-ne p2, p5, :cond_1

    :cond_0
    if-nez p3, :cond_1

    const/4 p5, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    if-nez p5, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 267
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzgo;->zzo:Lcom/google/android/gms/measurement/internal/zzgn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Z)V

    if-eqz p4, :cond_9

    .line 270
    array-length p1, p4

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 273
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>([B)V

    .line 274
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "deeplink"

    const-string p3, ""

    .line 276
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "gclid"

    const-string p4, ""

    .line 277
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "gbraid"

    const-string p5, ""

    .line 278
    invoke-virtual {p2, p4, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "timestamp"

    const-wide/16 v0, 0x0

    .line 280
    invoke-virtual {p2, p5, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 282
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return-void

    .line 284
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 285
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpc;->zza()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 286
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 287
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzcs:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p5, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p5

    if-eqz p5, :cond_6

    .line 288
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    .line 290
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string p5, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 291
    invoke-virtual {p2, p5, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p5, "gbraid"

    .line 293
    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 294
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    .line 296
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string p4, "Deferred Deep Link validation failed. gclid, deep link"

    .line 297
    invoke-virtual {p2, p4, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_1
    const-string p4, "gclid"

    .line 299
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_cis"

    const-string p4, "ddp"

    .line 300
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzr:Lcom/google/android/gms/measurement/internal/zzjc;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p3, p4, p5, p2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 302
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p2

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 304
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;D)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 305
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzim;->zza()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 271
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return-void
.end method

.method final zza(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 313
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzac:Ljava/lang/Boolean;

    return-void
.end method

.method final zzaa()V
    .locals 1

    .line 311
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzag:I

    return-void
.end method

.method public final zzab()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzac()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzc()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzad()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 535
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 536
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaf:Z

    return v0
.end method

.method public final zzae()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected final zzaf()Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 539
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzz:Z

    if-eqz v0, :cond_6

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaa:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzab:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaa:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaa:Ljava/lang/Boolean;

    .line 544
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 545
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 546
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzab:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 549
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzab:J

    .line 551
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zze(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 554
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 556
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 558
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Landroid/content/Context;

    .line 560
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 561
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaa:Ljava/lang/Boolean;

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 564
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzft;->zzae()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzft;->zzac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 565
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 566
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaa:Ljava/lang/Boolean;

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 540
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzag()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 568
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzg:Z

    return v0
.end method

.method public final zzah()Z
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 570
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 571
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzai()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzip;)V

    .line 572
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzad()Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 576
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 577
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzu()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_d

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 578
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 579
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzai()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc()Z

    move-result v2

    if-nez v2, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return v9

    .line 585
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzr()Lcom/google/android/gms/measurement/internal/zzld;

    move-result-object v3

    .line 587
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 588
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 589
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzld;->zzao()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 591
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzg()I

    move-result v3

    const v4, 0x392d8

    if-lt v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_b

    const/4 v3, 0x0

    .line 594
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzp()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v4

    .line 596
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 597
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzld;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzld;->zzaa()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 600
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Landroid/os/Bundle;

    :cond_4
    if-nez v3, :cond_7

    .line 602
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzah:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzah:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 603
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    if-eqz v5, :cond_6

    const-string v1, "Retrying."

    goto :goto_3

    :cond_6
    const-string v1, "Skipping."

    .line 605
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve DMA consent from the service, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " retryCount"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzah:I

    .line 606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 607
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v5

    :cond_7
    const/16 v4, 0x64

    .line 610
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v6

    const-string v7, "&gcs="

    .line 611
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v4

    const-string v6, "&dma="

    .line 615
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "&dma_cps="

    .line 618
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_a

    const/4 v5, 0x0

    :cond_a
    const-string v3, "&npa="

    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Consent query parameters to Bow"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v3

    .line 624
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    const-wide/32 v4, 0x16760

    .line 626
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzp:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v7

    const-wide/16 v10, 0x1

    sub-long/2addr v7, v10

    .line 628
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v1, v3

    move-wide v2, v4

    move-object v4, v0

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v10

    .line 629
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzny;->zza(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 631
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzai()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzho;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzho;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;)V

    .line 633
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 634
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzip;->zzac()V

    .line 635
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzkr;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzks;)V

    .line 638
    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Ljava/lang/Runnable;)V

    :cond_c
    return v9

    .line 580
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return v9
.end method

.method public final zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzb(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 317
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzaf:Z

    return-void
.end method

.method public final zzc()I
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzae:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzae:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzad()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    return v0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzn()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x3

    return v0

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x4

    return v0

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzad:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x5

    return v0

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x7

    return v0

    :cond_a
    return v1
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzh:Lcom/google/android/gms/measurement/internal/zzab;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzb;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzs:Lcom/google/android/gms/measurement/internal/zzb;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzs:Lcom/google/android/gms/measurement/internal/zzb;

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzag;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzi:Lcom/google/android/gms/measurement/internal/zzag;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzax;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzx:Lcom/google/android/gms/measurement/internal/zzax;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzip;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzx:Lcom/google/android/gms/measurement/internal/zzax;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzy:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzy:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzfw;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzv:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzv:Lcom/google/android/gms/measurement/internal/zzfw;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzfz;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzk:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzip;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzk:Lcom/google/android/gms/measurement/internal/zzfz;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzfy;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzo:Lcom/google/android/gms/measurement/internal/zzfy;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzhj;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzl:Lcom/google/android/gms/measurement/internal/zzhj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzip;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzl:Lcom/google/android/gms/measurement/internal/zzhj;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzfz;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzk:Lcom/google/android/gms/measurement/internal/zzfz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzk:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzip;->zzaf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzk:Lcom/google/android/gms/measurement/internal/zzfz;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzgo;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzj:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzim;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzj:Lcom/google/android/gms/measurement/internal/zzgo;

    return-object v0
.end method

.method final zzo()Lcom/google/android/gms/measurement/internal/zzhj;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzl:Lcom/google/android/gms/measurement/internal/zzhj;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzjc;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzr:Lcom/google/android/gms/measurement/internal/zzjc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzr:Lcom/google/android/gms/measurement/internal/zzjc;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzky;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzq:Lcom/google/android/gms/measurement/internal/zzky;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzq:Lcom/google/android/gms/measurement/internal/zzky;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzld;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzw:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzw:Lcom/google/android/gms/measurement/internal/zzld;

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzmn;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzm:Lcom/google/android/gms/measurement/internal/zzmn;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzm:Lcom/google/android/gms/measurement/internal/zzmn;

    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzny;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzn:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzim;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzn:Lcom/google/android/gms/measurement/internal/zzny;

    return-object v0
.end method

.method public final zzu()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzv()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzw()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method final zzy()V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzz()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
