.class public Lcom/r0adkll/slidr/model/SlidrConfig;
.super Ljava/lang/Object;
.source "SlidrConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/r0adkll/slidr/model/SlidrConfig$Builder;
    }
.end annotation


# instance fields
.field private colorPrimary:I

.field private colorSecondary:I

.field private distanceThreshold:F

.field private edgeOnly:Z

.field private edgeSize:F

.field private listener:Lcom/r0adkll/slidr/model/SlidrListener;

.field private position:Lcom/r0adkll/slidr/model/SlidrPosition;

.field private scrimColor:I

.field private scrimEndAlpha:F

.field private scrimStartAlpha:F

.field private sensitivity:F

.field private touchSize:F

.field private velocityThreshold:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->colorPrimary:I

    .line 16
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->colorSecondary:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->touchSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->sensitivity:F

    const/high16 v0, -0x1000000

    .line 19
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->scrimColor:I

    const v0, 0x3f4ccccd    # 0.8f

    .line 20
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->scrimStartAlpha:F

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->scrimEndAlpha:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 22
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->velocityThreshold:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 23
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->distanceThreshold:F

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->edgeOnly:Z

    const v0, 0x3e3851ec    # 0.18f

    .line 25
    iput v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->edgeSize:F

    .line 27
    sget-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->LEFT:Lcom/r0adkll/slidr/model/SlidrPosition;

    iput-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->position:Lcom/r0adkll/slidr/model/SlidrPosition;

    return-void
.end method

.method synthetic constructor <init>(Lcom/r0adkll/slidr/model/SlidrConfig$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/r0adkll/slidr/model/SlidrConfig;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/r0adkll/slidr/model/SlidrConfig;Lcom/r0adkll/slidr/model/SlidrPosition;)Lcom/r0adkll/slidr/model/SlidrPosition;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->position:Lcom/r0adkll/slidr/model/SlidrPosition;

    return-object p1
.end method

.method static synthetic access$402(Lcom/r0adkll/slidr/model/SlidrConfig;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->touchSize:F

    return p1
.end method

.method static synthetic access$902(Lcom/r0adkll/slidr/model/SlidrConfig;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->velocityThreshold:F

    return p1
.end method


# virtual methods
.method public getDistanceThreshold()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->distanceThreshold:F

    return v0
.end method

.method public getEdgeSize(F)F
    .locals 1

    .line 178
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->edgeSize:F

    mul-float v0, v0, p1

    return v0
.end method

.method public getListener()Lcom/r0adkll/slidr/model/SlidrListener;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->listener:Lcom/r0adkll/slidr/model/SlidrListener;

    return-object v0
.end method

.method public getPosition()Lcom/r0adkll/slidr/model/SlidrPosition;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->position:Lcom/r0adkll/slidr/model/SlidrPosition;

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->colorPrimary:I

    return v0
.end method

.method public getScrimColor()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->scrimColor:I

    return v0
.end method

.method public getScrimEndAlpha()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->scrimEndAlpha:F

    return v0
.end method

.method public getScrimStartAlpha()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->scrimStartAlpha:F

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->colorSecondary:I

    return v0
.end method

.method public getSensitivity()F
    .locals 1

    .line 146
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->sensitivity:F

    return v0
.end method

.method public getVelocityThreshold()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->velocityThreshold:F

    return v0
.end method

.method public isEdgeOnly()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/r0adkll/slidr/model/SlidrConfig;->edgeOnly:Z

    return v0
.end method
