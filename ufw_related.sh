# Install UFW (if not installed)
apt update && apt install ufw -y

# Enable/Disable Firewall
ufw enable    # Enable UFW (Starts firewall)
ufw disable   # Disable UFW (Stops firewall)

# Check Firewall Status
ufw status                # Show active rules
ufw status verbose         # Show detailed rules
ufw status numbered        # Show rules with line numbers

# Allowing Connections
ufw allow 22               # Allow SSH (Port 22)
ufw allow 80               # Allow HTTP (Port 80)
ufw allow 443              # Allow HTTPS (Port 443)
ufw allow 8080/tcp         # Allow TCP Port 8080
ufw allow 53/udp           # Allow UDP Port 53 (DNS)

# Allow by Service Name (if available)
ufw allow ssh              # Same as "ufw allow 22"
ufw allow http             # Same as "ufw allow 80"
ufw allow https            # Same as "ufw allow 443"

# Allow Specific IPs
ufw allow from 192.168.1.10       # Allow all access from this IP
ufw allow from 192.168.1.10 to any port 22  # Allow SSH only from this IP

# Allow Specific Subnet
ufw allow from 192.168.1.0/24 to any port 3306  # Allow MySQL access from subnet

# Denying Connections
ufw deny 22             # Block SSH
ufw deny 8080/tcp       # Block TCP port 8080
ufw deny from 192.168.1.10   # Block specific IP

# Reject instead of Drop
ufw reject 25           # Reject SMTP instead of silently dropping it

# Delete Rules
ufw delete allow 22     # Remove allow rule for SSH
ufw delete deny 8080    # Remove deny rule for port 8080
ufw delete 2            # Delete rule by number (from "ufw status numbered")

# Default Policies (Set before defining rules)
ufw default deny incoming   # Deny all incoming traffic by default
ufw default allow outgoing  # Allow all outgoing traffic by default
ufw default deny outgoing   # Deny all outgoing traffic (strict mode)

# Allow Incoming & Outgoing for a Specific Port
ufw allow in on eth0 to any port 53  # Allow incoming DNS requests on eth0
ufw allow out on eth0 to any port 53 # Allow outgoing DNS requests on eth0

# Allow a Range of Ports
ufw allow 1000:2000/tcp   # Allow TCP ports from 1000 to 2000
ufw allow 6000:7000/udp   # Allow UDP ports from 6000 to 7000

# Allow Specific Network Interface
ufw allow in on eth0 to any port 22  # Allow SSH on eth0
ufw allow out on wlan0 to any port 53 # Allow DNS queries on wlan0

# Enable Logging
ufw logging on         # Enable logging (default: low)
ufw logging off        # Disable logging
ufw logging medium     # Set logging level to medium
ufw logging high       # Set logging level to high

# Reset UFW (Deletes all rules and resets to default)
ufw reset

# Enable UFW on Boot
systemctl enable ufw
systemctl start ufw

# Disable UFW on Boot
systemctl disable ufw
systemctl stop ufw


# allow with protocol 
ufw allow from 135.22.65.0/24  to any port 9090 proto tcp
