# certified-kubernetes-security-specialist



Syft → Generate Software Bill of Materials (SBOM) to list dependencies in container images for security analysis.

Grype → Scan container images for vulnerabilities based on their SBOM data.

Kubesec → Analyze Kubernetes YAML files for security misconfigurations.

Kube-linter → Perform static analysis of Helm charts and Kubernetes manifests to detect security and best practice violations.

SBOM types → Use SPDX or CycloneDX to track software components and vulnerabilities in supply chain security.

Pod Security Admission, Pod Security Standards → Enforce security policies at the namespace level (e.g., privileged, baseline, restricted).

OPA (Open Policy Agent) → Enforce flexible security and policy rules across Kubernetes (e.g., fine-grained access control).

OPA Gatekeeper → Implement OPA-based policies as Kubernetes admission controller to enforce compliance during object creation.

RuntimeClasses → Choose different container runtimes (e.g., gVisor, Kata) per workload for enhanced security and isolation.

PriorityClasses → Define pod scheduling priorities to ensure critical workloads get scheduled first.

Container Runtimes (gVisor, Kata, runsc) → Use gVisor/Kata for sandboxing containers with extra security layers; runsc is a gVisor runtime.

mTLS (Mutual TLS) → Implement encrypted communication and authentication between services (e.g., Istio, Linkerd).

Resource Quotas → Control resource consumption (CPU, memory, storage) in a namespace to prevent resource exhaustion.

Kubernetes API Priorities → Ensure high-priority API requests are served first (e.g., limit the impact of excessive API requests).

Pod Priority and Preemptions → Allow higher-priority pods to evict lower-priority ones when resources are scarce.

Cilium Network Policies → Use for advanced eBPF-based network security and observability beyond standard Kubernetes NetworkPolicies.

Seccomp → Restrict syscalls that containers can make to reduce attack surface.

AppArmor → Apply profile-based access controls to restrict what processes can do inside a container.

Strace → Debug syscalls made by a container to analyze behavior or detect suspicious activity.

AquaSec Tracee → Runtime security monitoring and eBPF-based threat detection in Kubernetes.

kubectl proxy → Create a local API server proxy to access Kubernetes API without configuring authentication (useful for testing/debugging).