.class public final enum Lcom/google/firebase/firestore/core/OrderBy$Direction;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/OrderBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/OrderBy$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/OrderBy$Direction;

.field public static final enum ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

.field public static final enum DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;


# instance fields
.field private final comparisonModifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ASCENDING"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    .line 27
    new-instance v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;

    const-string v3, "DESCENDING"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4}, Lcom/google/firebase/firestore/core/OrderBy$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Lcom/google/firebase/firestore/core/OrderBy$Direction;

    sget-object v3, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->$VALUES:[Lcom/google/firebase/firestore/core/OrderBy$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->comparisonModifier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .locals 1

    .line 25
    const-class v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/core/OrderBy$Direction;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->$VALUES:[Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/OrderBy$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/OrderBy$Direction;

    return-object v0
.end method


# virtual methods
.method getComparisonModifier()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->comparisonModifier:I

    return v0
.end method
