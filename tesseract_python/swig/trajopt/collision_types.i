namespace trajopt_common
{
class CollisionCoeffData
{
public:
  CollisionCoeffData();
  CollisionCoeffData(double default_collision_coeff);

  void setDefaultCollisionCoeff(double default_collision_coeff);
  double getDefaultCollisionCoeff() const;

  void setCollisionCoeff(const std::string& obj1, const std::string& obj2, double collision_coeff);
  double getCollisionCoeff(const std::string& obj1, const std::string& obj2) const;

  bool operator==(const CollisionCoeffData& rhs) const;
  bool operator!=(const CollisionCoeffData& rhs) const;
};

struct TrajOptCollisionConfig
{
  TrajOptCollisionConfig();
  TrajOptCollisionConfig(double margin, double coeff);

  bool enabled;
  tesseract::collision::ContactManagerConfig contact_manager_config;
  tesseract::collision::CollisionCheckConfig collision_check_config;
  CollisionCoeffData collision_coeff_data;
  double collision_margin_buffer;
  int max_num_cnt;

  bool operator==(const TrajOptCollisionConfig& rhs) const;
  bool operator!=(const TrajOptCollisionConfig& rhs) const;
};
}
