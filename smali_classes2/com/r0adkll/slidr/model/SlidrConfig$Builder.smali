.class public Lcom/r0adkll/slidr/model/SlidrConfig$Builder;
.super Ljava/lang/Object;
.source "SlidrConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/r0adkll/slidr/model/SlidrConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/r0adkll/slidr/model/SlidrConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lcom/r0adkll/slidr/model/SlidrConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/r0adkll/slidr/model/SlidrConfig;-><init>(Lcom/r0adkll/slidr/model/SlidrConfig$1;)V

    iput-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    return-void
.end method


# virtual methods
.method public build()Lcom/r0adkll/slidr/model/SlidrConfig;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    return-object v0
.end method

.method public position(Lcom/r0adkll/slidr/model/SlidrPosition;)Lcom/r0adkll/slidr/model/SlidrConfig$Builder;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-static {v0, p1}, Lcom/r0adkll/slidr/model/SlidrConfig;->access$302(Lcom/r0adkll/slidr/model/SlidrConfig;Lcom/r0adkll/slidr/model/SlidrPosition;)Lcom/r0adkll/slidr/model/SlidrPosition;

    return-object p0
.end method

.method public touchSize(F)Lcom/r0adkll/slidr/model/SlidrConfig$Builder;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-static {v0, p1}, Lcom/r0adkll/slidr/model/SlidrConfig;->access$402(Lcom/r0adkll/slidr/model/SlidrConfig;F)F

    return-object p0
.end method

.method public velocityThreshold(F)Lcom/r0adkll/slidr/model/SlidrConfig$Builder;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-static {v0, p1}, Lcom/r0adkll/slidr/model/SlidrConfig;->access$902(Lcom/r0adkll/slidr/model/SlidrConfig;F)F

    return-object p0
.end method
