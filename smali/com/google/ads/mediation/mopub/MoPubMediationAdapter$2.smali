.class Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$2;
.super Ljava/lang/Object;
.source "MoPubMediationAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;

.field final synthetic val$reward:Lcom/mopub/common/MoPubReward;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;Lcom/mopub/common/MoPubReward;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$2;->this$0:Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$2;->val$reward:Lcom/mopub/common/MoPubReward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$2;->val$reward:Lcom/mopub/common/MoPubReward;

    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$2;->val$reward:Lcom/mopub/common/MoPubReward;

    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
