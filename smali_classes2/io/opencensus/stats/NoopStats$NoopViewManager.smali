.class final Lio/opencensus/stats/NoopStats$NoopViewManager;
.super Lio/opencensus/stats/ViewManager;
.source "NoopStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/stats/NoopStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopViewManager"
.end annotation


# static fields
.field private static final ZERO_TIMESTAMP:Lio/opencensus/common/Timestamp;


# instance fields
.field private final registeredViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-static {v0, v1, v2}, Lio/opencensus/common/Timestamp;->create(JI)Lio/opencensus/common/Timestamp;

    move-result-object v0

    sput-object v0, Lio/opencensus/stats/NoopStats$NoopViewManager;->ZERO_TIMESTAMP:Lio/opencensus/common/Timestamp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Lio/opencensus/stats/ViewManager;-><init>()V

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/opencensus/stats/NoopStats$NoopViewManager;->registeredViews:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/stats/NoopStats$1;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lio/opencensus/stats/NoopStats$NoopViewManager;-><init>()V

    return-void
.end method
