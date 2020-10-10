.class final Lio/opencensus/tags/NoopTags$NoopTagsComponent;
.super Lio/opencensus/tags/TagsComponent;
.source "NoopTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/tags/NoopTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopTagsComponent"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lio/opencensus/tags/TagsComponent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/tags/NoopTags$1;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lio/opencensus/tags/NoopTags$NoopTagsComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagPropagationComponent()Lio/opencensus/tags/propagation/TagPropagationComponent;
    .locals 1

    .line 111
    invoke-static {}, Lio/opencensus/tags/NoopTags;->getNoopTagPropagationComponent()Lio/opencensus/tags/propagation/TagPropagationComponent;

    move-result-object v0

    return-object v0
.end method

.method public getTagger()Lio/opencensus/tags/Tagger;
    .locals 1

    .line 106
    invoke-static {}, Lio/opencensus/tags/NoopTags;->getNoopTagger()Lio/opencensus/tags/Tagger;

    move-result-object v0

    return-object v0
.end method
