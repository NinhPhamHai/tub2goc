.class public Lcom/google/android/gms/ads/query/AdData;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"


# instance fields
.field private final zzgrq:Lcom/google/android/gms/ads/query/QueryData;

.field private final zzgrr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/query/QueryData;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/ads/query/AdData;->zzgrq:Lcom/google/android/gms/ads/query/QueryData;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/query/AdData;->zzgrr:Ljava/lang/String;

    return-void
.end method

.method public static getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getAdString()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/query/AdData;->zzgrr:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryData()Lcom/google/android/gms/ads/query/QueryData;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/query/AdData;->zzgrq:Lcom/google/android/gms/ads/query/QueryData;

    return-object v0
.end method
