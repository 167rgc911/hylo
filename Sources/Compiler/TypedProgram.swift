/// A data structure representing a typed Val program ready to be lowered.
public struct TypedProgram {

  /// The AST of the program.
  public let ast: AST

  /// The scope hierarchy of the AST.
  public let scopeHierarchy: ScopeHierarchy

  /// The overarching type of each declaration.
  public let declTypes: DeclMap<Type>

  /// The type of each expression.
  public let exprTypes: ExprMap<Type>

  /// A map from name expression to its referred declaration.
  public let referredDecls: [NodeID<NameExpr>: DeclRef]

  /// Creates a typed program from an AST and property maps describing its type annotations.
  public init(
    ast: AST,
    scopeHierarchy: ScopeHierarchy,
    declTypes: DeclMap<Type>,
    exprTypes: ExprMap <Type>,
    referredDecls: [NodeID<NameExpr>: DeclRef]
  ) {
    self.ast = ast
    self.scopeHierarchy = scopeHierarchy
    self.declTypes = declTypes
    self.exprTypes = exprTypes
    self.referredDecls = referredDecls
  }

}
